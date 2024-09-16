# dummy
# ejemplo_5 in julia

#Los datos recogidos de la población son los siguientes:
#
#Vaca Raza Padre Edad al primer parto Rebaño kg de leche
#---- ---- ----- -------------------- ------ -----------
#6    1    1     20                   1      6251.1
#7    1    2     40                   1      6173.5
#8    1    3     30                   2      5775.0
#9    1    2     26                   2      5775.6
#10   1    3     38                   3      5973.8
#11   1    1     24                   3      6050.9
#12    2    4     26                   4      4150.6 
#13    2    5     32                   4      4249.7
#14    2    5     36                   5      3849.1
#15   2    4     38                   5      3750.3

using LinearAlgebra
using SparseArrays

function solve_densem_pcg(A::Array{<:AbstractFloat,2},rhs::Array{<:AbstractFloat,1})
   # solve A sol = rhs by preconditioned conjugate gradient for densem A
   #   Preconditioner can be block-diagonal if blksize>1
   m=diag(A)
   m=ifelse.(m .<= 0,0,1 ./m)
   n=length(rhs)
   sol=zeros(n)
   p=zeros(n)
   z=zeros(n)
   w=zeros(n)
   r=zeros(n)
   oldtau=1
   r[:]=rhs # to avoid pass by reference
   for k in 1:1000
     z=m .* r
     tau=z'r
     if (k == 1)
         beta=0
         p=z
     else
         beta=tau/oldtau
         p=z+beta.*p
     end
     w=A*p
     alpha=tau/p'w
     sol=sol + alpha.*p
     if ((k % 100) != 0)
          r=r-alpha.*w
     else
          r=rhs-A*sol
     end
     conv=r'r/rhs'rhs
     println(k," iterations,   convergence criterion=",conv)
     if (conv < 1e-20) 
         break
     end
     oldtau = tau
   end   
   sol
end

function getA(ped::Array{Int,2})
    # tabular method
    nanim=size(ped,1)
    A=zeros(nanim,nanim)
    for i in 1:nanim
        m=ped[i,3]
        p=ped[i,2]
        A[i,i]=1
        if ((m!=0) & (p!=0))
            A[i,i]=A[i,i]+0.5*A[m,p]
        end
        for j in 1:(i-1)
            #println(i," ",j)
            if m!=0 
                A[i,j]=A[i,j]+0.5*A[m,j]
            end
            if p!=0
                A[i,j]=A[i,j]+0.5*A[p,j]
            end
            A[j,i]=A[i,j]
        end
    end
    A
end

X_mu=[ 1 1 1 1 1 1 1 1 1 1]'
X_raza=[1 1 1 1 1 1 0 0 0 0
        0 0 0 0 0 0 1 1 1 1]'
X_edad=[ 20
 40
 30
 26
 38
 24
 26
 32
 36
 38]
# center the covariate
X_edad = X_edad .- mean(X_edad)
X_rebano=[1 1 0 0 0 0 0 0 0 0
          0 0 1 1 0 0 0 0 0 0 
          0 0 0 0 1 1 0 0 0 0 
          0 0 0 0 0 0 1 1 0 0 
          0 0 0 0 0 0 0 0 1 1]'
y = [6251.1
6173.5
5775.0
5775.6
5973.8
6050.9
4150.6 
4249.7
3849.1
3750.3] 

# we extract a simple pedigree from the data; dams are assumed unknown
ped=
[
1 0 0
2 0 0
3 0 0
4 0 0
5 0 0
6        1  0
7        2  0
8        3  0
9        2  0
10       3  0
11       1  0
12       4 0
13       5 0
14       5 0
15       4  0
]
# Asumimos sigma2u=300000 sigma2e=900000 h2=0.25
sigma2u=300000; sigma2e=900000 

# get A-inverse brutally
Ai=inv(getA(ped))

# build MME
# fixed effects
X=[X_mu X_edad X_raza X_rebano]
# random
Z=zeros(10,15)
# 6th cow has 1st record, 2nd cow has 2nd record and so on
for i in 6:15
    rec=i-5
    Z[rec,i]=1
end

# MME
LHS=[X'X./sigma2e X'Z./sigma2e
     Z'X./sigma2e Z'Z./sigma2e + Ai./sigma2u]
RHS=[X'y./sigma2e
    Z'y./sigma2e]

# show pattern (this is not needed for the computations)
# using Plots
# savefig(Plots.spy(sparse(LHS),markersize=3,legend=nothing),"sparsity.pdf")

# julia library solution
sol=LHS \ RHS
# iterative solution
sol2=solve_densem_pcg(LHS,RHS)

# both solutions are *not* identical in the fixed effects because 
# the LHS is not full rank, but solutions for random effects and 
# for estimable functions are identical

# Now get estimable functions with restrictions
all_solutions=zeros(24,14)
# our two old solutions
all_solutions[:,13]=sol2
all_solutions[:,14]=sol
# borrado 1 a 9
LHS=[X'X./sigma2e X'Z./sigma2e
     Z'X./sigma2e Z'Z./sigma2e + Ai./sigma2u]
a_borrar=Int.(zeros(9,3))
a_borrar[1,:]=[1 5 8]
a_borrar[2,:]=[1 7 9]
a_borrar[3,:]=[1 6 8]
a_borrar[4,:]=[3 5 8]
a_borrar[5,:]=[3 7 9]
a_borrar[6,:]=[3 6 8]
a_borrar[7,:]=[4 5 8]
a_borrar[8,:]=[4 5 8]
a_borrar[9,:]=[4 6 8]
# deleting rows and columns is actually not easy in Julia.
# I found this 
#https://stackoverflow.com/questions/58033504/julia-delete-rows-and-columns-from-an-array-or-matix
for i in 1:9
    LHSmodif=LHS[setdiff(1:24, a_borrar[i,:]),setdiff(1:24, a_borrar[i,:])]
    RHSmodif=RHS[setdiff(1:24, a_borrar[i,:])]
    # put solutions back we need to use this setdiff again
    all_solutions[setdiff(1:24, a_borrar[i,:]),i]=LHSmodif \ RHSmodif
end
# other restrictions
# I (AL) use Henderson's 3.14 to introduce the restriction
# Restriction 10
M=[0 0 1/2 1/2 0   0   0   0   0
   0 0 0   0   1/3 1/3 1/3 0   0 
   0 0 0   0   0   0   0   1/2 1/2]'
LHS=[X'X./sigma2e+M*M' X'Z./sigma2e
     Z'X./sigma2e Z'Z./sigma2e + Ai./sigma2u]
all_solutions[:,10]=LHS \ RHS
# Restriction 11
M=[0 0 1/2 1/2 0   0   0     0   0
   0 0 0   0   1/3 1/3 -1/3  0   0 
   0 0 0   0   0   0   0     1/2 1/2]'
LHS=[X'X./sigma2e+M*M' X'Z./sigma2e
     Z'X./sigma2e Z'Z./sigma2e + Ai./sigma2u]
all_solutions[:,11]=LHS \ RHS
# Restriction 12
M=[0 0 1/2 1/2 0   0   0     0   0
   0 0 0   0   0.3 0.3 0.4   0   0 
   0 0 0   0   0   0   0     1/2 1/2]'
LHS=[X'X./sigma2e+M*M' X'Z./sigma2e
     Z'X./sigma2e Z'Z./sigma2e + Ai./sigma2u]
all_solutions[:,12]=LHS \ RHS

# soluciones efectos fijos
display(round.(all_solutions[1:9,:]',digits=2))
# aleatorios
display(round.(all_solutions[10:24,:]',digits=2))

# contrastes
# H1-H2 H1-H3 H1-H4 H4-H5
solH=all_solutions[5:9,:]
contrastH=zeros(4,14)
contrastH[1,:]=solH[1,:]-solH[2,:]
contrastH[2,:]=solH[1,:]-solH[3,:]
contrastH[3,:]=solH[1,:]-solH[4,:]
contrastH[4,:]=solH[4,:]-solH[5,:]
display(round.(contrastH',digits=2))

# R1-R2 $\mu$+R1 $\mu$+R2 ($\mu$+R1-$\mu$+R2) ($\mu$+R1+H1)-($\mu$+R1+H2)  ($\mu$+R1+H1)-($\mu$+R2+H4)
contrastH=zeros(6,14)
contrastH[1,:]=all_solutions[3,:]-all_solutions[4,:]
contrastH[2,:]=all_solutions[1,:]+all_solutions[3,:]
contrastH[3,:]=all_solutions[1,:]+all_solutions[4,:]
contrastH[4,:]=all_solutions[1,:]+all_solutions[3,:]
               -(all_solutions[1,:]+all_solutions[4,:])
contrastH[5,:]=all_solutions[1,:]+all_solutions[3,:]+all_solutions[5,:]
               -(all_solutions[1,:]+all_solutions[3,:]+all_solutions[6,:])
contrastH[6,:]=all_solutions[1,:]+all_solutions[3,:]+all_solutions[5,:]
               -(all_solutions[1,:]+all_solutions[4,:]+all_solutions[8,:])
display(round.(contrastH',digits=2))

# R1+vaca6  R1+vaca7 R2+vaca12  R1+vaca6-(R2+vaca12) R1+vaca6-(R1+vaca7)
contrastH=zeros(5,14)
contrastH[1,:]=all_solutions[3,:]-all_solutions[15,:]
contrastH[2,:]=all_solutions[3,:]-all_solutions[16,:]
contrastH[3,:]=all_solutions[4,:]-all_solutions[20,:]
contrastH[4,:]=all_solutions[3,:]-all_solutions[15,:]
               -all_solutions[4,:]-all_solutions[20,:]
contrastH[5,:]=all_solutions[3,:]-all_solutions[15,:]
               -all_solutions[3,:]-all_solutions[16,:]
display(round.(contrastH',digits=2))

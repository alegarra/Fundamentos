---
title: Fundamentos matematicos de la prediccion de valores de cria ^[Creative Commons CC-BY License, derecho de copiar, distribuir, exhibir y representar la obra y hacer obras derivadas siempre y cuando reconozca y cite esta obra.]
author: Francisco Javier Mendizábal Múgica 
date: 1994
lang: es
abstract: Notas de la asignatura Mejora Genética Animal. Escuela Técnica Superior de Ingenieros Agrónomos, UPNA. Pamplona-Iruña, 1994. ^[Reescritas y corregidas por Carolina García Baccino, Fernando Macedo y Andrés Legarra, 2020. ] 
---

\newpage
  
\tableofcontents

\newpage
  



# Introduccion

Tanto la estimación de parametros poblacionales, como los
métodos modernos de predicción del valor de cria de los individues de una población, tienen como fundamento de sus cálculos el método de los mínimos cuadrados. Las demostraciones
teóricas y la aplicación de estos métodos son sencillas en poblaciones pequeñas y con una estructura equilibrada, pero se
vuelven
muy complicados en caso contrario. Sin embargo se simplifican notablemente, si se abandona el álgebra de números reales para trabajar en el álgebra de matrices. Por ello es especialmente interesante para las personas relacionadas con la predicción y utilización de valores de cría, dominar los
fundamentos del álgebra de matrices.

Con estos apuntes se pretende mostrar estos fundamentos del modo mas sencillo posible y dar unos primeros pasos en su aplicacion practica.


# Algebra

## Algebra matricial de los números reales y álgebra de matrices

Partimos de la base de que conocemos el algebra de los números reales. En ella trabajamos con ecuaciones, cuyos elementos son "incógnitas". Las incógnitas se simbolizan con
letras. Números y letras se unen por medio de operaciones matemáticas. Estas operaciones tienen determinadas propiedades. Siempre que se tenga en cuenta estas propiedades, se puede introducir cambios en las ecuaciones. El objetivo final de estos cambios suele ser encontrar valores reales para las incógnitas.

Entre el álgebra de los números reales y e1 álgebra de  matrices se pueden destacar las siguientes diferencias:

1. Los elementos de las ecuaciones del álgebra de  matrices no son números reales ni simples incógnitas, sino matrices de números reales y matrices de incógnitas.

2. Las operaciones con matrices se definen de forma diferente a las operaciones con números reales y poseen propiedades distintas.

Nuestro primer paso sera la definición de matriz y de sus operaciones, asi como el repaso de las reglas del álgebra de matrices.


## Definición y dimensión de una matriz

Una matriz es una ordenación regular de elementos en filas y columnas. Los elementos de una matriz pueden ser números reales o incógnitas (letras minúsculas). Todas las filas tienen la misma longitud, es decir el mismo número de elementos y lo mismo hay que decir de las columnas.

Generalmente una matriz se representa por una letra mayuscula (en negrita, sin cursiva) y sus elementos individuales se escriben como letras minusculas con dos subindices.
Por ejemplo:

$$
\mathbf{A}=\begin{pmatrix}
 a_{11} & a_{12} & a_{13} \\ 
 a_{21} & a_{22} & a_{23} 
\end{pmatrix}
= a_{ij} 
\left\{
\begin{matrix}
i = 1,2 \\
j = 1,3
\end{matrix}\right\}
$$

El primer subindice de un elemento informa sobre la fila en la que este se encuentra, mientras que el segundo indica la columna correspondiente. A veces se separan por una coma:

$$
\mathbf{A}=\begin{pmatrix}
 a_{1,1} & a_{1,2} & a_{1,3} \\ 
 a_{2,1} & a_{2,2} & a_{2,3} 
\end{pmatrix}
$$

La DIMENSION de una matriz se compone de dos números enteros, de los cuales el primero es igual al número de filas y el segundo al número de columnas de la matriz. La matriz **A** de nuestro ejemplo tiene una dimensión de 2 x 3, porque tiene dos filas y
tres columnas.

**Para llevar a cabo operaciones con matrices es imprescindible tener en cuenta su dimensión.**

Un vector es una matriz con la dimension m x 1 (vector columna) o 1 x n
(vector fila). Los vectores se representan por medio de
letras minúsculas (negrita, no cursiva: por ejemplo **x** o $\mathbf{x}$ ) y los elementos de un vector, por la misma letra minúscula (cursiva) acompañada de un único subindice (por ejemplo $x_1$).
Un escalar es un número real, o lo que es lo mismo, "una matriz de dimensión 1 x 1, cuyo único elemento es un número real". Se representan por una letra minúscula (cursiva), por ejemplo *g* o $g$. 

### Ejemplos de matrices:

$$
\mathbf{B} = 
\begin{pmatrix}
4 & 7 & 5 & 6 & 7 \\
9 & 3 & 2 & 1 & 2 \\
2 & 0 & 4 & 2 & 3 \\
6 & 6 & 5 & 3 & 2
\end{pmatrix} = 
\begin{pmatrix}
b_{11} & b_{12} & b_{13} & b_{14} & b_{15} \\
b_{21} & b_{22} & b_{23} & b_{24} & b_{25} \\
b_{31} & b_{32} & b_{33} & b_{34} & b_{35} \\
b_{41} & b_{42} & b_{43} & b_{44} & b_{45} 
\end{pmatrix}  
$$

**B** es una matriz
de dimensión *4 x 5*.

$$
\mathbf{c}=
\begin{pmatrix}
6 \\
3 \\
2
\end{pmatrix} = 
\begin{pmatrix}
c_1 \\
c_2 \\
c_3
\end{pmatrix} 
$$

*c* es un vector columna de
dimensión 3, o una matriz de dimensión 3 x 1.

$$d = \begin{pmatrix}
5 & 4 & 3 & 0
\end{pmatrix}$$

*d* es un vector fila de dimensión 4, o una matriz de dimensión 1 x 4




## Cálculo matricial

### Definición de las operaciones de cálculo

Para definir una operación es necesario determinar lo siguiente:

- dimensión de las matrices con las que se pretende operar
- dimensión de la matriz resultante
- modo de operar para calcular cada uno de los elementos de la
matriz resultante

Las operaciones que se van a explicar a continuación son: transposición, adición, substracción, producto de dos matrices, producto de un escalar por una matriz y producto directo de dos
matrices.

**Observación:** el producto de una escalar por una matriz y el producto directo son dos operaciones en si, distintas del producto de dos matrices.

#### Transposicion 

Matriz de partida: una matriz **A**, de dimensión n x m. Matriz resultante: una matriz $\mathbf{B} = \mathbf{A'}$ , de dimension m x n. El indicador de transposicion es el apóstrofe `'`, por ejemplo en $\mathbf{A}'$, y a veces un superíndice ${ }^{T}$ como en $\mathbf{A}^{T}$.

El elemento situado en la posición $(i,j)$ de $\mathbf{B} =\mathbf{A'}$ es igual al
elemento $(j,i)$ de $\mathbf{A}$ : $b_{i,j} = a_{j,i}$ 
dicho de otra forma, la matriz transpuesta de **A** es la que resulta de escribir las filas de **A** como columnas.

Por ejemplo, matriz $\mathbf{A} =
\begin{pmatrix}
2 & 3 & 4 & 5 \\
6 & 7 & 8 & 9
\end{pmatrix}$ de dimensión 2 x 4
y matriz $\mathbf{B=A'}=
\begin{pmatrix}
2 & 6 \\
3 & 7 \\
4 & 8 \\
5 & 9
\end{pmatrix}$ de
dimension 4 x 2.

El elemento $a_{1,3}$ de **A** es igual al elemento $b_{3,1}$ de **B**: 

$$a_{1,3} = b_{3,1} = 4 $$


Los elementos de la primera fila de **A** (2 3 4 5), son los elementos de la primera columna de **B**.


#### Adición


- Matrices de partida: dos matrices **A** y **B**, ambas con 1a misma dimensión m x n. La suma de dos matrices de dimensiones distintas es imposible.
- Matriz resultante: una matriz **C**, con la misma dimensión que **A** y
**B**, es decir m x n.
- El elemento situado en la posicion $(i,j)$ de **C**
es igual a la suma de los elementos correspondientes de **A** y **B**: $c_{i,j} = a_{i,j} + b_{i,j}$.

Ejemplo:


$$\mathbf{A}=
\begin{pmatrix}
1 & 2 & 3 \\
6 & 5 & 2 \\
1 & 0 & 1 \\
3 & 2 & 9
\end{pmatrix}
$$

dimensión 4 x 3

$$\mathbf{B}=
\begin{pmatrix}
7 & 6 & 9 \\
3 & 3 & 8 \\
6 & 7 & 4 \\
9 & 0 & 2
\end{pmatrix}
$$


**A** y **B** tienen la misma dimensión, luego se puede llevar a cabo la adición. La matriz resultado **C** tendrá tambión la dimensión 4 x 3

$$\mathbf{C}=
\begin{pmatrix}
1+7 & 2+6 & 3+9 \\
6+3 & 5+3 & 2+8 \\
1+6 & 0+7 & 1+4 \\
3+9 & 2+0 & 9+2
\end{pmatrix}
=
\begin{pmatrix}
8 & 8 & 12 \\
9 & 8 & 10 \\
7 & 7 & 5 \\
12 & 2 & 11
\end{pmatrix}
$$

El elemento $c_{2,3}$ de **C** es $c_{2,3}=a_{2,3}+b_{2,3}=2+8=10$

#### Substracción

La substracción de dos matrices es igual a la adición, pero cambiando de signo todos los elementos del segundo sumando. La substracción de las matrices del ejemplo anterior seria:

$$\mathbf{D}=\mathbf{A-B}=\begin{pmatrix}
  1-7 &2-6 &3-9 \\
  6-3 &5-3 &2-8 \\
  1-6 &0-7 &1-4 \\
  3-9 &2-0 &9-2 \\
\end{pmatrix}
=
\begin{pmatrix}
  -6 &-4 &-6 \\
   3 & 2 &-6\\
  -5 &-7 &-3\\
  -6 & 2 &7 
\end{pmatrix}
$$

#### Multiplicacion

- Matrices de partida: 
  - una matriz **A** de dimension *m x n*
  - una matriz **B** de dimensión *n x p*
- Matriz resultante: una matriz de dimensión *m x p*

La multiplicación se indica como $\mathbf{A} \times \mathbf{B}$ o bien directamente como $\mathbf{A} \mathbf{B}$. Obsérvese que, para que la multiplicación sea posible, el número de columnas de la primera matriz (*n*) tiene que ser igual al número de filas de la segunda matriz.

```
dimensión de la      dimension de la     dimension de la
primera matriz       segundaa matriz     matriz resultado
  m x n                  n x p               m x p 
      |                  |
      +------------------+
      
Solo se puede llevar a cabo la multiplición si estos dos números son iguales
```

- Para calcular el elemento $c_{i,j}$ de **C** se toma la i-ésima fila de **A** :
$\begin{pmatrix}a_{i,1} a_{i,2} ... a_{i,n}\end{pmatrix}$ 
y la j-ésima columna de **B** :
$\begin{pmatrix}
b_{i,j} \\
b_{2,j} \\
... \\
b_{n,j} 
\end{pmatrix}$

El elemento $c_{i,j}$ se calcula como:

$$
c_{i,j}=
\sum_{k=1}^n a_{i,k} b_{k,j} = a_{i,1} b_{1,j} + a_{i,2} b_{2,j} +.....+ a_{i,n} b_{n,j}
$$

Esto se puede ver mas facilmente con un ejemplo:

Matriz $\mathbf{A} = \begin{pmatrix}
4 & 5 & 0 & 1 \\
1 & 6 & 1 & 2 \\
\end{pmatrix}$ de dimension 2 x 4.


Matriz $\mathbf{B} = 
\begin{pmatrix}
2 & 6 & 3 \\
3 & 5 & 0 \\
2 & 4 & 2 \\
1 & 2 & 7
\end{pmatrix}$ de
dimension 4 x 3

```
dimensión de la      dimension de la     dimension de la
primera matriz       segunda matriz     matriz resultado
  2 x 4                  4 x 3               2 x 3 
      |                  |
      +------------------+
      
4=4 luego se puede llevar a cabo la multiplicación
```

Pare calcular el elemento $c_{1,3}$ de **C**, tomamos la primera fila de **A** y la tercera columna de **B**, multiplicamos los elementos de las mismas dos a dos y sumamos los productos:

Primera fila de **A**

 $$\begin{pmatrix} 4 & 5 &  0 & 1 \end{pmatrix}$$
 
 
Tercera columna de **B**

$$\begin{pmatrix} 3 \\ 0 \\ 2 \\ 7 \end{pmatrix}$$


$$ c_{1,3} = 4 \times 3 + 5 \times 0 + 0 \times 2 + 1 \times 7 = 18 $$

Para calcular ahora el elemento $c_{2,1}$  de **C**, tomamos la segunda fila de **A** y la primera columna de **B**, y repetimos la operación anterior.

Segunda fila de **A** 

$$\begin{pmatrix} 1 & 6 & 1 & 2 \end{pmatrix}$$

Primera columna de **B**

$$\begin{pmatrix} 2 \\ 3 \\ 2 \\ 1 \end{pmatrix}$$

$$ c_{2,1}=1 \times 2 + 6 \times 3 + 1 \times 2 + 2 \times 1 =24$$


Del mismo modo se calculan los *2 x 3* elementos de **C**.

#### Multiplicación de un escalar por una matriz

La multiplicación de un escalar por una matriz se define como una operación especial, ya que según la definición de multiplicación de dos matrices, no sería posible multiplicar una matriz de dimension 4 x 1 por una matriz de dimensión *n x m*, mas que en el caso de que *n=1*. Esta operación es un caso especial del producto directo, el cual se explicará mas adelante.

- Matrices de partida: un escalar *k* y una matriz **A**, ésta última con dimension *n x m*
- Matriz resultante: una matriz **B**, de dimensión *n x m* (la misma dimensión de **A**)
- Para calcular el elemento $b_{i,j}$ de **B**, se multiplica el elemento correspondiente de **A** por el escalar *k*: $b_{i,j} = k \times a_{i,j}$

Ejemplo: escalar *k = 5* ; matriz 

$$\mathbf{A}=\begin{pmatrix} = 
3 & 2 & 0 \\
4 & 1 & 2
\end{pmatrix}
$$

dimension 2 x 3

$$
\mathbf{B}=k \mathbf{A}= 
\begin{pmatrix}
5 \times 3 & 5 \times 2 & 5 \times 0 \\ 
5 \times 4 & 5 \times 1 & 5 \times 2 
\end{pmatrix}
=
\begin{pmatrix}
15 & 10 & 0 \\
20 & 5 & 10 \\
\end{pmatrix}
$$

dimension 2 x 3

#### Producto de Kronecker

A veces[^1] se le llama también *producto directo* pero vamos a evitar ese nombre, ya que se utiliza también con el llamado *producto de Hadamard* (o elemento-por-elemento). Vamos a indicar el producto de Kronecker por el simbolo $\otimes$ ([como en wikipedia](https://es.wikipedia.org/wiki/Producto_de_Kronecker)).

[^1]: por ejemplo en la version original de estas notas

No hay que confundir esta operacion con la multiplicacion. 

- Matrices de partida:
  - una matriz **A** de dimensión *m x n* 
  - una matriz **B** de dimensión *p x q*
- Matriz resultante del producto de Kronecker: una matriz **C** de dimensión *(m x p) x (n x q)* 
- Modo de cálculo:

$$ \mathbf{C}=\mathbf{A}\otimes\mathbf{B} =
\begin{pmatrix}
a_{1,1}\mathbf{B} & a_{1,2}\mathbf{B} & ... & a_{1,n}\mathbf{B} \\
a_{2,1}\mathbf{B} & a_{2,2}\mathbf{B} & ... & a_{2,n}\mathbf{B} \\
... & ... & ... & ...\\
a_{m,1}\mathbf{B} & a_{m,2}\mathbf{B} & ... & a_{m,n}\mathbf{B} \\
\end{pmatrix}
$$

donde $a_{i,j} \mathbf{B}$ representa el producto del escalar $a_{i,j}$ por la matriz $\mathbf{B}$.

La mejor forma de comprender cómo se lleva a cabo esta operación es utilizando un ejemplo:

matriz $\mathbf{A}=
\begin{pmatrix}
2 & 3 \\ 
5 & 7
\end{pmatrix}$ de dimension 2 x 2

matriz $\mathbf{B}= 
\begin{pmatrix}
1 &4 \\ 
6 &8 \\
4 &1
\end{pmatrix}$ de dimension 3 x 2.

$$ 
\mathbf{C}=\mathbf{A}\otimes\mathbf{B}=
\left(
\begin{array}{c|c}
2\mathbf{B} & 3\mathbf{B} \\
\hline
5\mathbf{B} & 7\mathbf{B} \\
\end{array}
\right)
=
\left(
\begin{array}{cc|cc}
2\times1 & 2\times4 & 3\times1 & 3\times4 \\
2\times6 & 2\times8 & 3\times6 & 3\times8 \\
2\times4 & 2\times1 & 3\times4 & 3\times1 \\
\hline
5\times1 & 5\times4 & 7\times1 & 7\times4 \\
5\times6 & 5\times8 & 7\times6 & 7\times8 \\
5\times4 & 5\times1 & 7\times4 & 7\times1 \\
\end{array}
\right)
$$

<!---
comment
$$
\mathbf{C}=\mathbf{A}\otimes\mathbf{B}=
\left(
\begin{array}{cc}
2\mathbf{B} & 3\mathbf{B} \\
5\mathbf{B} & 7\mathbf{B} \\
\end{array}
\right)
=
\left(
\begin{array}{cccc}
2\times1 & 2\times4 & 3\times1 & 3\times4 \\
2\times6 & 2\times8 & 3\times6 & 3\times8 \\
2\times4 & 2\times1 & 3\times4 & 3\times1 \\
5\times1 & 5\times4 & 7\times1 & 7\times4 \\
5\times6 & 5\times8 & 7\times6 & 7\times8 \\
5\times4 & 5\times1 & 7\times4 & 7\times1 \\
\end{array}
\right)
$$
--->

$$\mathbf{C}= 
\begin{pmatrix}
2  & 8 &3  &12 \\ 
12 &16 &18 &24 \\
8  &2  &12 &13 \\
5  &20 &7  &28 \\
30 &40 &42 &56 \\
20 &5  &28 &7 \\
\end{pmatrix}
$$

La dimension de **C** es 6 x 4, donde:

6 = 2 x 3 número de filas de **A** por número de filas
de B

4 = 2 x 2 número de columnas de **A** por número de columnas de **B**

### Reglas del álgebra matricial

Nuestro objetivo no es escribir un libro de matemáticas, sino
introducir al lector de la manera mas sencilla posible en el álgebra de matrices. Por ello no se harán aquí demostraciones, sino simples comprobaciones de las reglas, por medio de matrices sencillas. Estas comprobaciones pueden servir también de ejercicios fáciles. Para quien quiera profundizar en este tema, existen libros de consulta suficientes y [wikipedia](https://es.wikipedia.org/wiki/Matriz_(matem%C3%A1ticas)) es un recurso excelente.


#### TRANSPOSICION

1. La transpuesta de la transpuesta de una matriz **A**, es la matriz de partida **A** : $(\mathbf{A}')'= \mathbf{A}$

#### ADICION

2. La adición de matrices es asociativa: si queremos sumar tres matrices, obtendremos el mismo resultado sumando primero las dos primeras y sumando luego a la matriz resultante la tercera, que sumando primero la segunda y la tercera y sumando luego la primera a la matriz resultante:

$$ \mathbf{A+B+C=A+(B+C)=(A+B)+C}$$

Ejemplo:

$$ \mathbf{A}=\begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix}$$

$$ \mathbf{B} = \begin{pmatrix} 5 & 0 & 4 \\ 3 & 1 & 7 \\ 6 & 2 & 1 \end{pmatrix} $$

$$ \mathbf{C} = \begin{pmatrix} 0 & 4 & 3 \\ 6 & 5 & 4 \\ 1 & 2 & 3 \end{pmatrix} $$

$$
\begin{aligned}
\begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix} +
\begin{pmatrix} 5 & 0 & 4 \\ 3 & 1 & 7 \\ 6 & 2 & 1 \end{pmatrix} + 
\begin{pmatrix} 0 & 4 & 3 \\ 6 & 5 & 4 \\ 1 & 2 & 3 \end{pmatrix} = \\
\begin{pmatrix} 6 & 2 & 7 \\ 7 & 6 & 13 \\ 13 & 10 & 10 \end{pmatrix} +
\begin{pmatrix} 0 & 4 & 3 \\ 6 & 5 & 4 \\ 1 & 2 & 3 \end{pmatrix} = \\
\begin{pmatrix} 6 & 6 & 10 \\ 13 & 11 & 17 \\ 14 & 12 & 13 \end{pmatrix}
\end{aligned}
$$

$$
\begin{aligned}
\begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix} +
\begin{pmatrix} 5 & 0 & 4 \\ 3 & 1 & 7 \\ 6 & 2 & 1 \end{pmatrix} + 
\begin{pmatrix} 0 & 4 & 3 \\ 6 & 5 & 4 \\ 1 & 2 & 3 \end{pmatrix} = \\
\begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix} + 
\begin{pmatrix} 5 & 4 & 7 \\ 9 & 6 & 11 \\ 7 & 4 & 4 \end{pmatrix} = \\
\begin{pmatrix} 6 & 6 & 10 \\ 13 & 11 & 17 \\ 14 & 12 & 13 \end{pmatrix}
\end{aligned}
$$

3. La adición de matrices es conmutativa: 

$$ \mathbf{A+B=B+A}$$

$$
\begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix} +
\begin{pmatrix} 5 & 0 & 4 \\ 3 & 1 & 7 \\ 6 & 2 & 1 \end{pmatrix} = 
\begin{pmatrix} 1+5 & 2+0 & 3+4 \\ 4+3 & 4+1 & 6+7 \\ 7+6 & 8+2 & 9+1 \end{pmatrix}=
\begin{pmatrix} 6 & 2 & 7 \\ 7 & 6 & 13 \\ 13 & 10 & 10 \end{pmatrix}
$$

$$
\begin{pmatrix} 5 & 0 & 4 \\ 3 & 1 & 7 \\ 6 & 2 & 1 \end{pmatrix} +
\begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix} = 
\begin{pmatrix} 5+1 & 0+2 & 4+3 \\ 3+4 & 1+4 & 7+6 \\ 6+7 & 2+8 & 1+9 \end{pmatrix}=
\begin{pmatrix} 6 & 2 & 7 \\ 7 & 6 & 13 \\ 13 & 10 & 10 \end{pmatrix}
$$

#### ADICION Y TRANSPOSICION
4. La traspuesta de ta suma de dos matrices es igual a la suma de las traspuestas de las mismas: $\mathbf{(A + B)}' = \mathbf{A}' + \mathbf{B}'$

$$
(\mathbf{A+B})'=
\begin{pmatrix} 6 & 7 & 13 \\ 2 & 6 & 10 \\ 7 & 13 & 10 \end{pmatrix}
$$

$$
(\mathbf{A}'+\mathbf{B})'=
\begin{pmatrix} 1 & 4 & 7 \\ 2 & 5 & 8 \\ 3 & 6 & 9 \end{pmatrix} +
\begin{pmatrix} 5 & 3 & 6 \\ 0 & 1 & 2 \\ 4 & 7 & 1 \end{pmatrix}=
\begin{pmatrix} 6 & 7 & 13 \\ 2 & 6 & 10 \\ 7 & 13 & 10 \end{pmatrix}
$$

#### MULTIPLICACION
5. La multiplicación es asociativa: $\mathbf{(A  B)  C = A  (B  C)}$

$$\mathbf{A} =
\begin{pmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
\end{pmatrix}
; 
\mathbf{B} =
\begin{pmatrix}
2 & 3 \\
3 & 2 \\
4 & 1 \\
\end{pmatrix}
; 
\mathbf{C} =
\begin{pmatrix}
5 & 6 \\
3 & 4
\end{pmatrix}
$$

Dimensiones: **A**: 2 x 3 **B**: 3 x 2 **C**: 2 x 2
.

Comprobación de que las multiplicaciones son posibles:

$$
\mathbf{AB} : (2 \times \underline 3) \Leftrightarrow (\underline 3 \times 2) \rightarrow 2 \times 2
$$

$$
\mathbf{(AB)C} : (2 \times \underline 2) \Leftrightarrow (\underline 2 \times 2) \rightarrow 2 \times 2
$$

$$
\mathbf{BC} : (3 \times \underline 2) \Leftrightarrow (\underline2 \times 2) \rightarrow 2 \times 2
$$

$$
\mathbf{A(BC)} : (2 \times \underline 3) \Leftrightarrow (\underline 3 \times 2) \rightarrow 2 \times 2
$$

De las dos formas son posibles las multiplicaciones y el resultado final es una matriz 2 x 2.


Cálculo:

- Primer procedimiento: 

$$\mathbf{AB} =
\begin{pmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
\end{pmatrix} 
\begin{pmatrix}
2 & 3 \\
3 & 2 \\
4 & 1 \\
\end{pmatrix}
=\begin{pmatrix}
20 & 10 \\
47 & 28
\end{pmatrix}
$$

$$\mathbf{(AB)C} =
\begin{pmatrix}
20 & 10 \\
47 & 28
\end{pmatrix}
\begin{pmatrix}
5 & 6 \\
3 & 4
\end{pmatrix}=
\begin{pmatrix}
130 & 160 \\
319 & 364 
\end{pmatrix}
$$

- Segundo procedimiento:

$$
\mathbf{BC} =
\begin{pmatrix}
2 & 3 \\
3 & 2 \\
4 & 1 \\
\end{pmatrix}
\begin{pmatrix}
5 & 6 \\
3 & 4
\end{pmatrix}
=
\begin{pmatrix}
19 & 24 \\
21 & 26 \\
23 & 28
\end{pmatrix}
$$

$$
\mathbf{A(BC)} =
\begin{pmatrix}
1 & 2 & 3 \\
4 & 5 & 6 \\
\end{pmatrix} 
\begin{pmatrix}
19 & 24 \\
21 & 26 \\
23 & 28
\end{pmatrix}
=
\begin{pmatrix}
130 & 160 \\
319 & 364 
\end{pmatrix}
$$



6. Una caracteristica muy importante de la multiplicación de dos matrices, es la siguiente:

**La multiplicacion de dos matrices no es conmutativa**

Esto quiere decir que **A** x **B** (también escrito **AB**) no es necesariamente igual a **B** x **A** (también escrito **BA**).

Que se pueda llevar a cabo la multiplicación **A** x **B**, no implica ni siquiera que se pueda llevar a cabo la multiplicacion **B** x **A**. Aplicando esto a las matrices **B** y **C** del ejemplo anterior, la multiplicación **B** x **C** es posible:

```
dimensión de B    dimensión de C    dimensión de B x C
    3 x 2           2 x 2     ->       3 x 2
        +--- == ----+
```

pero la multiplicaión **C** x **B** no lo es:

```
dimensión de C   dimensión de B    dimensión de C x B
    2 x 2            3 x 2     ->       imposible
        +---- != ----+
```

- Puede ser que las dos multiplicaciones sean posibles, como en el caso de las matrices **A** y **B** del ejemplo anterior:


```
dimensión de A    dimensión de B    dimensión de A x B
    2 x 3           3 x 2     ->       2 x 2
        +--- == ----+
```

```
dimensión de B    dimensión de A    dimensión de B x A
    3 x 2           2 x 3     ->       3 x 3
        +--- == ----+
```


Pero la matriz (**A** x **B**), dimensión 2 x 2, no puede ser en ningún caso igual a la matriz (**B** x **A**), que tiene la dimensión 3 x 3.

- Las matrices $\mathbf{D}= \begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}$
y $\mathbf{E}= \begin{pmatrix}
5 & 6 \\
7 & 8
\end{pmatrix}$
se pueden multiplicar en los dos sentidos, y en los dos casos el producto es una matriz de dimensión 2 x 2. Pero tampoco en este
caso es $\mathbf{D} \times \mathbf{E} =
\mathbf{E} \times \mathbf{D}$ 


$$\mathbf{D} \times \mathbf{E}= \begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}
\begin{pmatrix}
5 & 6 \\
7 & 8
\end{pmatrix}
=
\begin{pmatrix}
19 & 22 \\
43 & 50
\end{pmatrix}
$$

$$\mathbf{E} \times \mathbf{D}= 
\begin{pmatrix}
5 & 6 \\
7 & 8
\end{pmatrix}
\begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}
=
\begin{pmatrix}
23 & 34 \\
31 & 46
\end{pmatrix}
$$

La multiplicación de dos matrices llevada a cabo en las dos direcciones da lugar al mismo resultado solamente en casos muy especiales. Por ello, al decir que se van a multiplicar dos matrices **L** y **M**, hay que especificar en qué dirección se va a llevar a cabo la dirección: 

- cuando la operación a realizar es **L** x **M**, se dice que la matriz **M** se va a *premultiplicar* por **L**, o que se va a multiplicar por **L** por la izquierda 

- cuando la operación a realizar es **M** x **L**, se dice que la matriz **M** se va a *postmultiplicar* por **L**, o que se va a multiplicar por **L** por la derecha.

#### MULTIPLICACION Y TRASPOSICION

7. La traspuesta del producto de dos matrices **A** y **B** es igual al producto de las traspuestas de **A** y **B** en la direccion opuesta:

$$\mathbf{(AB)'=\mathbf{B}'\mathbf{A}'}$$ 

Tomando las matrices **B** y **C** del ejemplo anterior:

Comprobación de que las dimensiones concuerdan:

```
dimensión de B    dimensión de C    dimensión de B x C
    3 x 2           2 x 2     ->       3 x 2
        +--- == ----+
```

```
dimensión de C'    dimensión de B'    dimensión de C' x B'
    2 x 2           2 x 3     ->       2 x 3
        +--- == ----+
```

Comprobación del resultado:

$$\mathbf{BC}= 
\begin{pmatrix}
19 & 24 \\
21 & 26 \\
23 & 28
\end{pmatrix}
;
\mathbf{(BC)'}=
\begin{pmatrix}
19 & 21 & 23 \\
24 & 26 & 28
\end{pmatrix}
$$

$$
\mathbf{C'B'}=
\begin{pmatrix}
5 & 3 \\
6 & 4
\end{pmatrix}
\begin{pmatrix}
2 & 3 & 4 \\
3 & 2 & 3
\end{pmatrix}
=
\begin{pmatrix}
19 & 21 & 23 \\
24 & 26 & 28
\end{pmatrix}
$$


Esta propiedad se puede generalizar del siguiente modo: la traspuesta del producto de varias matrices es igual al producto de las correspondientes traspuestas en la dirección contraria

$$(\mathbf{A} \times \mathbf{B} \times \mathbf{C} \times \mathbf{D})' =
 \mathbf{D}' \times \mathbf{C}' \times \mathbf{B}' \times \mathbf{A}'  
$$

o de manera mas concisa:

$$(\mathbf{ABCD})'=\mathbf{D}' \mathbf{C}'  \mathbf{B}'  \mathbf{A}'  
$$

#### MULTIPLICACION Y ADICION

8. La multiplicación y la adición de
matrices son
distributivas:

$$\mathbf{L} \times (\mathbf{M}  + \mathbf{N}) = \mathbf{L} \times \mathbf{M} + \mathbf{L}  \times \mathbf{N} $$

$$(\mathbf{M}  + \mathbf{N}) \times \mathbf{P}   =   \mathbf{M} \times \mathbf{P}  + \mathbf{N} \times \mathbf{P}$$

or

$$ \mathbf{L} (\mathbf{M}  + \mathbf{N}) = \mathbf{LM} + \mathbf{LN}$$

$$(\mathbf{M}  + \mathbf{N}) \mathbf{P}   =   \mathbf{MP}  + \mathbf{NP}$$

#### RESUMEN DE LAS REGLAS DEL ALGEBRA DE MATRICES

1. $(\mathbf{A'})=\mathbf{A}$
2. $\mathbf{A}+\mathbf{B}+\mathbf{C}=(\mathbf{A+B})+\mathbf{C} = \mathbf{A}+(\mathbf{B+C})$
3. $\mathbf{A}+\mathbf{B}=\mathbf{B}+\mathbf{A}$
4. $(\mathbf{A}+\mathbf{B})'=\mathbf{A}'+\mathbf{B}'$
5. $(\mathbf{A}\mathbf{B})\mathbf{C}=\mathbf{A}(\mathbf{BC})$
6. $\mathbf{AB}$ no es necesariamente igual a $\mathbf{BA}$
7. $(\mathbf{A}\mathbf{B})'=\mathbf{B}'\mathbf{A}'$
8. $\mathbf{L} (\mathbf{M}  + \mathbf{N}) = \mathbf{LM} + \mathbf{LN}$ y también $(\mathbf{M}  + \mathbf{N}) \mathbf{P}   =   \mathbf{MP}  + \mathbf{NP}$

## Matrices especiales

Hay matrices que, debido a su estructura, tienen caracteristicas especiales. Estas caracteristicas pueden ser muy interesantes o incluso condición necesaria para ja resolución de los problemas. En este capitulo se muestran algunas de estas matrices especiales. Su valor o aplicación se verá mas adelante.

### MATRIZ CUADRADA 

Es una matriz con dimensión n x n, es decir que tiene el mismo número de filas que de columnas. La dimensión de una matriz cuadrada se puede representar por un solo número, que se llama "orden" de la matriz.

La *diagonal* (frecuentemente $diag()$) de una matriz cuadrada es el vector de los elementos de la matriz que se encuentran sobre la diagonal que cruza la matriz desde arriba a la izquierda hasta abajo a la derecha.

La *traza* (frecuentemente $tr()$) de una matriz cuadrada es la suma de los elementos de la diagonal.

Ejemplo: una matriz cuadrada **A**, de orden 3:
$\mathbf{A}=\begin{pmatrix}
3 & 2 & 7 \\
6 & 5 & 4 \\
2 & 1 & 6
\end{pmatrix}$ 

- diagonal de **A**: $diag(\mathbf{A}) = \begin{pmatrix}3 & 5 & 6\end{pmatrix}$
- traza de **A**: $tr(\mathbf{A}) = 3 + 5 + 6 = 14$ 

### MATRIZ SIMETRICA

 Es una matriz cuadrada **A** tal que $\mathbf{A}=\mathbf{A}'$.  Entonces es $a_{i,j} = a_{j,i}$.
 
**A** tiene que ser cuadrada. Si $\mathbf{A}$ tuviera la dimensión n x m, siendo
n distinto de m, la dimension de $\mathbf{A}'$ seria mxn, por lo que no podría ser $\mathbf{A}=\mathbf{A}'$.

En una matriz simétrica, la mitad que se encuentra a la derecha y arriba de le diagonal es la imagen especular de la parte que se encuentra a la izquierda y abajo de la diagonal.

Ejemplo: 

$$\mathbf{A}=\begin{pmatrix}
8 & 1 & 2 & 3 \\
1 & 4 & 4 & 5 \\
2 & 4 & 3 & 6 \\
3 & 5 & 6 & 1
\end{pmatrix}=\mathbf{A}' 
\quad
\begin{aligned}
a_{1,3}=a_{3,1}=2 \\
a_{2,4}=a_{4,2}=5
\end{aligned}$$

### MATRIZ TRIANGULAR 

Es una matriz cuadrada en la que, o bien los elementos sobre la diagonal, o bien los elementos bajo
la diagonal, son todos cero. Ejemplos:

- $\begin{pmatrix}
5 & 0 & 0 & 0 \\
7 & 4 & 0 & 0 \\
6 & 5 & 3 & 0 \\
2 & 1 & 4 & 2
\end{pmatrix}$, que es una *triangular inferior* y 

- $\begin{pmatrix}
3 & 6 & 9 \\
0 & 8 & 10 \\
0 & 0 & 7 
\end{pmatrix}$, que es una *triangular superior*.

### MATRIZ DIAGONAL 

Es una matriz cuadrada, en la que todos los elementos fuera de la diagonal son ceros. Ejemplos:

$\begin{pmatrix}
5 & 0 & 0 \\
0 & 4 & 0 \\
0 & 0 & 3 
\end{pmatrix}$ 
;
$\begin{pmatrix}
1 & 0 & 0 & 0\\
0 & 4 & 0 & 0\\
0 & 0 & 2 & 0\\
0 & 0 & 0 & 26
\end{pmatrix}$

### MATRIZ ESCALAR 

Es una matriz diagonal, en la que todos los elementos de la diagonal son iguales. Ejemplo:
$\begin{pmatrix}
5 & 0 & 0 \\
0 & 5 & 0 \\
0 & 0 & 5 
\end{pmatrix}$ 

La multiplicación de una matriz escalar por otra matriz es igual a la multiplicación del escalar correspondiente por esa matriz.
Comprobar que:

$$
\begin{aligned}
\begin{pmatrix}
5 & 0 & 0 \\
0 & 5 & 0 \\
0 & 0 & 5 
\end{pmatrix}
\begin{pmatrix}
1 & 2  \\
3 & 4 \\
5 & 6
\end{pmatrix}=
& \begin{pmatrix}
1 & 2  \\
3 & 4 \\
5 & 6
\end{pmatrix}
\begin{pmatrix}
5 & 0 \\
0 & 5
\end{pmatrix}
= \\
& 5 \begin{pmatrix}
1 & 2  \\
3 & 4 \\
5 & 6
\end{pmatrix}=
\begin{pmatrix}
5 & 10  \\
15 & 20 \\
25 & 30
\end{pmatrix}
\end{aligned}
$$ 

### MATRIZ IDENTIDAD O UNIDAD 

Es una matriz escalar representada por **I** (y a veces por $\mathbf{I}_n$ para indicar que es de orden *n*), cuyos elementos sobre la diagonal son unos.
En el álgebra de matrices no hay solamente una unidad, sino una unidad para cada orden:

$\mathbf{I}_3=\begin{pmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1 
\end{pmatrix}
\quad
\mathbf{I}_4=\begin{pmatrix}
1 & 0 & 0 & 0\\
0 & 1 & 0 & 0\\
0 & 0 & 1 & 0\\
0 & 0 & 0 & 1 
\end{pmatrix}$, etc. 

La multiplicación de una matriz **A** por 1a correspondiente matriz unidad **I**, es la misma matriz **A**:

$$\begin{pmatrix}
1 & 2  \\
3 & 4 \\
5 & 6
\end{pmatrix}\begin{pmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1 
\end{pmatrix}=
\begin{pmatrix}
1 & 2  \\
3 & 4 \\
5 & 6
\end{pmatrix}$$

### INVERSA DE UNA MATRIZ CUADRADA 

 La inversa de una matrix cuadrada **A**, de orden n, es otra matriz cuadrada $\mathbf{A}^{-1}$, de la misma dimensión, tal que la multiplicación de **A** por su inversa $\mathbf{A}^{-1}$ sea igual a la matriz unidad de dimensión n: $\mathbf{A} \times \mathbf{A}^{-1} = \mathbf{I}_n$.
 
Ejemplo con $\mathbf{A}=\begin{pmatrix} 
1 & 2  \\
3 & 4 
\end{pmatrix}$ y su inversa $\mathbf{A}^{-1}=\begin{pmatrix}
-2.0  & 1.0\\
  1.5 & -0.5
\end{pmatrix}$

$$\begin{pmatrix}
1 & 2  \\
3 & 4 
\end{pmatrix}
\begin{pmatrix}
-2.0 &  1.0\\
  1.5 & -0.5
\end{pmatrix}=
\begin{pmatrix}
1 & 0 \\
0 & 1 
\end{pmatrix}$$
 
No todas las matrices cuadradas tienen una inversa.

### MATRIZ NULA 

De dimensión n x m, es una matriz cuyos elementos son todos ceros y se indica como $\mathbf{0}_{n,m}$.
Hay tantas matrices nulas como dimensiones son posibles.
La suma de una matriz **A** y la matriz nula de su misma dimensión,es igual a la matriz **A**:  $\mathbf{A}_{n,m}+\mathbf{0}_{n,m}=\mathbf{A}_{n,m}$.

### MATRICES PARTICIONADAS

Hasta ahora se ha supuesto que los elementos de una matriz eran números reales, o incógnitas. Pero esos elementos también pueden ser matrices. Si agrupamos los elementos de una matriz en submatrices, estamos considerando la matriz original como una matriz particionada.

Ejemplo: Podemos construir la matriz **E**, a partir de las
matrices **A**, **B**, **C** y **D** siguientes:

$$\mathbf{A}=
\begin{pmatrix}
1 & 2 \\
3 & 4 
\end{pmatrix} 
\quad
\mathbf{B}=
\begin{pmatrix}
5\\
6
\end{pmatrix} 
\quad
\mathbf{C}=
\begin{pmatrix}
7 & 8
\end{pmatrix} 
\quad
\mathbf{D}=
\begin{pmatrix}
9
\end{pmatrix} 
$$

$$
\mathbf{E}=
\begin{pmatrix}
\mathbf{A} & \mathbf{B} \\
\mathbf{C} & \mathbf{D} 
\end{pmatrix}=
\left(
\begin{array}{cc|c}
1 & 2 & 5 \\
3 & 4 & 6 \\
\hline
7 & 8 & 9
\end{array}
\right)
$$

Podemos considerar a **E** como la mariz de los números 1,2,5 etc. o como la matriz de las submatrices **A**, **B** etc. Para ello es condicion necesaria que:

- número de filas de **A** = número de filas de **B**
- número de filas de **C** = número de filas de **D**
- número de columnas de **A** = número de columnas de **C**
- número de columnas de **B** = número de columnas de **D**

Con las matrices:

$\mathbf{F}=
\begin{pmatrix}
5 & 6 & 7\\
8 & 9 & 10
\end{pmatrix}$ 
y 
$\mathbf{G}=
\begin{pmatrix}
4 & 5\\
6 & 7\\
8 & 9
\end{pmatrix}$ 

no se puede construir ninguna matriz particionada. Por ejemplo:

$$
\left(
\begin{array}{cc}
\mathbf{F} & \mathbf{G} 
\end{array}
\right)
=
\begin{pmatrix}
5 & 6 & 7 & 4 & 5\\
8 & 9 & 10 & 6 & 7\\
  &   &    & 8 & 9
\end{pmatrix}
$$ 

no es una ordenación regular de elementos en filas y columnas, donde todas las filas tengan la misma longitud, es decir el mismo número de elementos, es decir, NO ES UNA MATRIZ.

Con matrices particionadas se peude operar exactamente igual que con matrices de elementos simples, pero bajo la condición adicional de que las operaciones con las submatrices cumplan a su vez con las reglas del álgebra de matrices.

Por ejemplo, sean las matrices particionadas **E** y **L**

$$
\mathbf{E}=
\begin{pmatrix}
\mathbf{A} & \mathbf{B} \\
\mathbf{C} & \mathbf{D} 
\end{pmatrix} 
\quad \text{;} \quad
\mathbf{L}=
\begin{pmatrix}
\mathbf{M} \\
\mathbf{N} 
\end{pmatrix} 
$$

se pueden multiplicar de la siguiente forma:

$$
\mathbf{E} \times  \mathbf{L} = 
\begin{pmatrix}
\mathbf{A} & \mathbf{B} \\
\mathbf{C} & \mathbf{D} 
\end{pmatrix} 
\begin{pmatrix}
\mathbf{M} \\
\mathbf{N} 
\end{pmatrix} =
\begin{pmatrix}
\mathbf{AM} & \mathbf{BN} \\
\mathbf{CM} & \mathbf{DN} 
\end{pmatrix} 
$$

pero solo con la condición de que:

- los productos **AM**, **BN**, **CM** y **DN** sean posibles
- la dimensión de **AM** sea igual a la dimensión de **BN**
- la dimensión de **CM** sea igual a la dimensión de **DN**

## Ejemplos de matrices en R 

```R
B=matrix(
  c(4 , 7 , 5 , 6 , 7,
9 , 3 , 2 , 1 , 2,
2 , 0 , 4 , 2 , 3,
6 , 6 , 5 , 3 , 2),
nrow=4,ncol=5,byrow=TRUE)

> B
     [,1] [,2] [,3] [,4] [,5]
[1,]    4    7    5    6    7
[2,]    9    3    2    1    2
[3,]    2    0    4    2    3
[4,]    6    6    5    3    2
```

Nótese que en realidad introducimos una serie de números en `c(...)` que la función `as.matrix` trocea según el número de filas y columnas. El uso de `byrow=TRUE` permite llenar por filas lo que es más natural para seguir los ejemplos. Omitiéndolo obtenemos una matrix diferente (que después veremos que es una *traspuesta*):

```R
B=matrix(
+   c(4 , 7 , 5 , 6 , 7,
+ 9 , 3 , 2 , 1 , 2,
+ 2 , 0 , 4 , 2 , 3,
+ 6 , 6 , 5 , 3 , 2),
+ nrow=4,ncol=5)
> B
     [,1] [,2] [,3] [,4] [,5]
[1,]    4    7    1    4    6
[2,]    7    9    2    2    5
[3,]    5    3    2    3    3
[4,]    6    2    0    6    2
```

Introducción de un vector:

```R
d = c(5 , 4 , 3 , 0)
```

En R, hay que tener cuidado porque los vectores no son explícitamente definidos como vector columna o vector fila sino que depende del contexto, aunque *en general* funcionan como un vector columna

NOTA: vale la pena poner ejemplos en R?


# Matrices cuadradas

## Determinante de una matriz cuadrada

Sea **A** una matriz cuadrada de orden *n*.
El determinante de esa matriz es un número,
que corresponde a esa matriz y la
caracteriza, dando una idea de algunas de las
propiedades más importantes **A**. Una teoría rigurosa del determinante es bastante farragosa y no la presentaremos  aquí, pero se puede consultar, por ejemplo, en [wikipedia](https://es.wikipedia.org/wiki/Determinante_(matem%C3%A1tica)).

El determinante de la matriz cuadrada **A** se representa por $|\mathbf{A}|$
y se calcula de la siguiente forma:

- el determinante de **A** es la suma de una serie determinada de
productos de los elementos de **A**

- cada producto es la multiplicación de *n* elementos de **A**, donde *n* es el orden de **A**.

- si de uno de estos productos forma parte un elemento de la fila
i de **A**,
no puede haber ningún otro elemento de esa fila i
formando parte de ese mismo producto.

- si de uno de estos productos forma parte un elemento de la
columna j de **A**, no puede haber ningun otro elemento de esa columna j
formando parte de ese mismo producto.

- Se suman todos los productos posibles que cumplen las dos
condiciones anteriores.

- antes de sumarse,
cada producto recibe un signo positivo o
negativo. Más adelante se explicará qué signo recibe cada
producto.

Leyendo de esta definición, no es fácil hacerse una idea clara de
qué es el determinante de una matriz.
Por ello, se va a empezar
por calcular determinantes de matrices de dimensión pequeña, que
sirvan como ejemplo.

## Deteminante de una matriz cuadrada de orden 2:

$$
\mathbf{A}=
\begin{pmatrix}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{pmatrix}
$$

$$|\mathbf{A}|= a_{11}  a_{12} -
a_{21}  a_{22}
$$


Los productos que se suman son todos productos de dos elementos
(2 = orden de A).
El primer elemento del primer producto es $a_{11}$ (fila 1, columna 1)
y por eso no puede ser el segundo elemento ni de la fila 1 ni de
la columna 1 . El único elemento de A que cumple esta condición es
$a_{22}$.

El primer elemento del segundo producto es $a_{12}$ (fila 1, columna
2) y por eso no puede ser el segundo elemento ni de la fila 1 ni de
la columna 2.
El único elemento de **A** que cumple esta condición es $a_{21}$.


No hay ningún
otro producto de dos elementos que cumpla las condiciones.

## Determinante de una matriz cuadrada de orden 3

Sea 

$$
\mathbf{A}=
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}
$$

su determinante aplicando las reglas anteriores ^[que no detallaremos aquí] es:

$$
\begin{aligned}
|\mathbf{A}|=
  a_{11} a_{22} a_{33} + a_{12} a_{23} a_{31} + a_{13} a_{21} a_{32} \\
- a_{13} a_{22} a_{31} - a_{12} a_{21} a_{33} - a_{11} a_{23} a_{32}
\end{aligned}
$$



## Desarrollo del determinante de una matriz segun una fila o una columna

Hemos visto ya unas reglas fáciles para calcular el determinante de matrices
 de orden 2 o 3. Sin embargo, el
cálculo del determinante de una matriz de mayor dimensión puede ser muy complicado.

Hay un procedimiento que facilita el cálculo de
determinantes de matrices de orden $n > 3$:
determinante según una fila o una columna. No pretendemos aqui
demostrar la validez del método, sino simplemente mostrarlo por
medio de una matriz de orden 3. Para ello es necesario definir primero los *subdeterminantes* y los *menores* (os *cofactores* o *adjuntos*). 


### Subdeterminante: 

sea **B** una matriz
de dimensión $m \times n = 4 \times 5$:

$$
\mathbf{B}=
\begin{pmatrix}
b_{11} & b_{12} & b_{13} & b_{14} & b_{15}\\
b_{21} & b_{22} & b_{23} & b_{24} & b_{25}\\
b_{31} & b_{32} & b_{33} & b_{34} & b_{35}\\
b_{41} & b_{42} & b_{43} & b_{44} & b_{45}\\
\end{pmatrix}
$$


Un subdeterminante de
**B** es el determinante de una matriz **C**,
cuadrada de orden *p*, que está constituida por elementos extraídos
de *p* filas y *p* columnas de **B** por ejemplo:

$$
\mathbf{C}=
\begin{pmatrix}
b_{11} & b_{14} \\
b_{31} & b_{34} \\
\end{pmatrix}
$$

que es el determinante de la matriz **C**,
de los elementos de **B** que
están en las filas 1 ó 3 y en las columnas 1 o 4.

En capítulos postriores se vuelven a utilizar subdeterminantes.
Para el desarrollo de un determinante hace falta un caso especial
de subdeterm nante, que se conoce como adjunto o cofactor de un
elemento de la matriz.


### Adjunto (cofactor) 

Sea una matrix cuadrada, por ejemplo la 
matriz **A** , de dimension 3 x 3:

$$
\mathbf{A}=
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}
$$

El adjunto o cofactor de un elemento $a_{i,j}$ de **A** es el determinante
de la submatriz  $\mathbf{M}_{i,j}$, que resulta de suprimir la fila
*i* y la columna *j*
de **A**, es decir,
la fila y la columna donde se encuentra
elemento $a_{i,j}$.
El adjunto del elemento $a_{i,j}$ se representa por $|\mathbf{M}_{i,j}|$ ^[No hay una notación consensual para el adjunto de una matriz. Para evitar confusiones, aquí hemos cambiado la notación original y seguido el ejemplo de SR Searle.].

Por ejemplo el adjunto del elemento  $a_{2,1}$ es el determinante de la 
matriz $\mathbf{M}_{2,1}$:

$$
\mathbf{M}_{2,1}=
\begin{pmatrix}
- & a_{12} & a_{13} \\
- & - & - \\
- & a_{32} & a_{33} \\
\end{pmatrix}
$$

$$
|\mathbf{M}_{2,1}|=a_{12} a_{33} - a_{13} a_{32} 
$$

El adjunto del elemento  $a_{2,2}$ es el determinante de la 
matriz $\mathbf{M}_{2,2}$:

$$
\mathbf{M}_{2,2}=
\begin{pmatrix}
a_{11} & - & a_{13} \\
- & - & - \\
a_{31} & - &  a_{33} \\
\end{pmatrix}
$$

$$
|\mathbf{M}_{2,2}|=a_{11} a_{33} - a_{13} a_{31} 
$$

De este modo se pueden hallar los adjuntos de todos los elementos de **A**. Por ejemplo si **A** es de orden 3, las diferentes submatrices obtenidas borrando una de las filas y una columnas de **A** son 9, y los menores, cofactores o adjuntos son los determinantes de esas submatrices. 

### Desarrollo del determinante de **A** según la i-ésima fila:

Es posible calcular el determinante de una matriz como una expansión en la que tomamos una columna de referencia y vamos construyendo un producto en el que se utilizan los adjuntos que hemos presentado previamente. Estos adjuntos son determinantes de orden inferior. Sea la matriz **A** y la fila *i*. La regla es así:

$$
|\mathbf{A}|=
\sum_{i=n}^n (-1)^{(i+j)} a_{ij} |\mathbf{M}_{ij}| 
$$

Primero presentaremos la regla considerando la primera fila. Después generalizaremos la regla
a cualquier fila o columna.

Consideremos la primera fila de **A**.

El determinante de **A** es igual a la suma de todos los elementos de
la primera fila, multiplicados previamente por su adjunto y
provistos de un signo más o menos.

Tomemos la primera fila de **A**: $( a_{11} a_{12} a_{13} )$.

El determinante de **A** será igual a:

$$
|\mathbf{A}|=
\sum_{i=n}^n (-1)^{(1+j)} a_{1j} |\mathbf{M}_{1j}| 
$$

La expresión $i + j$ previamente ($i=1$ en este caso, ya que consideramos la primera columna)
da lugar al signo positivo
siendo i la fila y j la columna del elemento que,
por su adjunto, da lugar a ese sumando. En la primera columna, i=1 por ejemplo:

- para el elemento $a_{11}$: $(-1)^{1+1}=1$
- para el elemento $a_{12}$: $(-1)^{1+2}=-1$ etc.

Otra regla más sencilla todavía para encontrar el signo del
sumando correspondiente a un elemento es la siguiente:

- el primer elemento arriba a la izquierda de la matriz (1,1) recibe siempre un signo más.
- en la fila 1, el segundo elemento recibe un signo menos, el
tercero un signo más, el cuarto signo menos y asi sucesivamente,
de modo que al avanzar horizontalmente se va cambiando cada vez
el signo.
- lo mismo para las columnas verticalmente.


Asi en
$\begin{pmatrix}
a_{11} & a_{12} & a_{13} & a_{14} & a_{15}\\
a_{21} & a_{22} & a_{23} & a_{24} & a_{25}\\
a_{31} & a_{32} & a_{33} & a_{34} & a_{35}\\
a_{41} & a_{42} & a_{43} & a_{44} & a_{45}\\
\end{pmatrix}$
 los signos son:
$\begin{pmatrix}
+ & - & + & - & + \\
- & + & - & + & - \\
+ & - & + & - & + \\
- & + & - & + & - \\
+ & - & + & - & + \\
\end{pmatrix}$

Observación :
el producto $a_{ij} |\mathbf{M}_{ij}|$ recibe un signo positivo o
negativo, pero los valores de $a_{ij}$ y $|\mathbf{M}_{ij}|$ también pueden ser
positivos o negativos,
de modo que el signo definitivo del
sumando se compone del producto de los tres signos.

Vamos a llevar a cabo el desarrollo del determinante de
una matriz de orden 3 según la segunda fila.

La matriz es:

$$
\mathbf{A}=
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}
$$


La segunda fila de **A** es $( a_{11} a_{12} a_{13} )$.
  
  
- los signos para los sumandos son $(-,+,-)$ de acuerdo a lo anterior.
- los adjuntos de las elementos de la segunda fila son:

$$
|\mathbf{M}_{21}| =
\left| 
\begin{matrix}
 a_{12} & a_{13} \\
 a_{32} & a_{33} \\
\end{matrix}
\right| = a_{12} a_{33} - a_{13} a_{32}
$$ 

$$
|\mathbf{M}_{22}| =
\left| 
\begin{matrix}
 a_{11} & a_{13} \\
 a_{31} & a_{33} \\
\end{matrix}
\right| = a_{11} a_{33} - a_{13} a_{31}
$$ 

$$
|\mathbf{M}_{23}| =
\left| 
\begin{matrix}
 a_{11} & a_{12} \\
 a_{31} & a_{32} \\
\end{matrix}
\right| = a_{11} a_{32} - a_{12} a_{31}
$$ 

y el determinante de **A** es:

$$
\begin{aligned}
& |\mathbf{A}| = \\
 & - a_{21} |\mathbf{M}_{21}| + a_{22} |\mathbf{M}_{22} - a_{23} |\mathbf{M}_{23} =\\
 & - a_{21} (a_{12} a_{33} - a_{13} a_{32}) + a_{22} (a_{11} a_{33} - a_{13} a_{31}) - a_{23} (a_{11} a_{32} - a_{12} a_{31}) = \\
 & - a_{21} a_{12} a_{33} + a_{21} a_{13} a_{32} + a_{22} a_{11} a_{33} - a_{22} a_{13} a_{31} - a_{23} a_{11} a_{32} + a_{12} a_{23} a_{31})
\end{aligned}
$$

Se puede comprobar que los sumandos aqui y en el apartado 2.1 son
los mismos y que los signos coinciden.

Otrs posibilidades de calcular el determinante  seria
desarrollarlo según:

- la primera fila: $|\mathbf{A}| =  a_{11} |\mathbf{M}_{11}| - a_{12} |\mathbf{M}_{12} + a_{13} |\mathbf{M}_{13}$
- la tercera fila: $|\mathbf{A}| =  a_{31} |\mathbf{M}_{31}| - a_{32} |\mathbf{M}_{32} + a_{33} |\mathbf{M}_{33}$
- la primera columna: $|\mathbf{A}| =  a_{11} |\mathbf{M}_{11}| - a_{21} |\mathbf{M}_{21} + a_{31} |\mathbf{M}_{31}$
- la segunda columna: $|\mathbf{A}| = - a_{12} |\mathbf{M}_{12}| + a_{22} |\mathbf{M}_{22} - a_{32} |\mathbf{M}_{32}$
- la tercera columna: $|\mathbf{A}| = + a_{13} |\mathbf{M}_{13}| - a_{23} |\mathbf{M}_{23} + a_{33} |\mathbf{M}_{33}$

## Dificultad del cálculo del determinante de una matriz de orden n

El cálculo de determinantes de matrices de orden superior a tres
es difícil de hacer si no es por medio del desarrollo segun una
fila o columna.

Para hallar por medio de un desarrollo el determinante de una matriz de orden 4,
es necesario calcular cuatro determinantes de
orden 3 (los cuatro adjuntos de los elementos de la fila o
columna).

Para hallar por medio de un desarrollo el determinante de una
matriz de orden 5, es necesario calcular cinco determinantes de
orden (los cinco adjuntos), es decir 5 x 4 determinantes de
orden 3.

Para hallar por medio de un desarrollo el determinante de una
matriz de orden 6, es necesario calcular seis determinantes de
orden 5 (los seis adjuntos),
es decir 6 x 5 x 4 determinantes de
orden 3.

Para hallar por medio de un desarrollo el determinante de una
matriz de orden n, es necesario  un número de :
$n \times (n—1) \times (n—2) ... 6 \times 4 = n!/3$
determinantes de orden 3.
Con la dimensión de 1 a matriz,
aumenta la dificultad y el costo
del calculo del determinante de manera mas que exponencial.

Para
poder hallar determinantes de matrices de orden grande son
necesarios otros algoritmos, que no se van a explicar aqui. En la
práctica existen rutinas para el cálculo por ordenador.
Casos especiales son las matrices triangulares y las matrices
diagonales. Cuando la matriz cuyo determinante se quiere calcular
tiene alguna fila o columna en la que se encuentre un numero
elevado de el ementos iguales a cero,
el desarrollo del
determinante según esa fila o columna se simplifica notablemente,
porque al tenerse que multiplicar por cero,
no es necesario
hallar los adjuntos de los elementos nulos. El caso más simple es
el de una matriz triangular:

$$
|\mathbf{A}|=
\begin{vmatrix}
a_{11} & 0 & 0 \\
a_{21} & a_{22} & 0 \\
a_{31} & a_{32} & a_{33} \\
\end{vmatrix} =
 a_{11} |\mathbf{M}_{11}| - 0 |\mathbf{M}_{12} + 0 |\mathbf{M}_{13} =
  a_{11} |\mathbf{M}_{11}|
$$

$$
a_{11} |\mathbf{M}_{11}| = a_{11} \begin{vmatrix}
 a_{22} & 0 \\
 a_{32} & a_{33} \\
\end{vmatrix} =  a_{11} a_{22} a_{33}
$$


EL DETERMINANTE OE UNA MATRIZ TRIANGULAR ES IGUAL
AL PRODUCTO DE LOS ELEMENTOS DE LA DAGONAL

Como las matrices diagonales 
son un caso especial de las
triangulares,
lo
mismo se puede aplicar a las matrices diagonales


## Propiedades de los determinantes

Los determinantes tienen las siguientes prpiedades:

1. el determinante de la traspuesta de una matriz **A**,
es igual al determinante de **A**: $|\mathbf{A}'|=|\mathbf{A}|$.


$\mathbf{A}=
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$
and
$\mathbf{A}'=
\begin{pmatrix}
a_{11} & a_{21} & a_{31} \\
a_{12} & a_{22} & a_{32} \\
a_{13} & a_{23} & a_{33} \\
\end{pmatrix}$. 

Ojo, el elemento $(1,2)$ de **A** es $a_{12}$, pero el elemento $(1,2)$ de
$\mathbf{A}'$ es $a_{21}$, dado que es la traspuesta de **A**. Utilizando la regla del determinante de una matriz de orden 3:

$$
\begin{aligned}
|\mathbf{A}| = \\
  a_{11} a_{22} a_{33} \quad (1) \\
+ a_{12} a_{23} a_{31} \quad (2) \\
+ a_{13} a_{21} a_{32} \quad (3) \\
- a_{13} a_{22} a_{31} \quad (4) \\
- a_{12} a_{21} a_{33} \quad (5) \\
- a_{11} a_{23} a_{32} \quad (6)
\end{aligned}
$$

y el determinante de la traspuesta es:

$$
\begin{aligned}
|\mathbf{A}'| = \\
  a_{11} a_{22} a_{33} \quad (1) \\
+ a_{21} a_{32} a_{13} \quad (3) \\
+ a_{31} a_{12} a_{23} \quad (2) \\
- a_{31} a_{22} a_{13} \quad (4) \\
- a_{21} a_{12} a_{33} \quad (5) \\
- a_{11} a_{32} a_{23} \quad (6)
\end{aligned}
$$


En los dos casos se encuentran los mismos productos con los
mismos signos.

Una vez comprobada esta propiedad, ya no es
necesario diferenciar
entre filas y columnas. Al describir las propiedades de los
determinantes se hablará siempre de filas,
pero exactamente lo
mismo valdrá para las columnas.

2. El determinante de una matriz que tiene
dos filas iguales, es cero.

En efecto, sea $\mathbf{A}=
\begin{pmatrix}
a & b & c \\
a & b & c \\
d & e & f \\
\end{pmatrix}$

El determinante de **A** será: 

$$
|\mathbf{A}| = a b f + bcd+cae-cbd-baf-ace=0
$$

Los mismos producto aparecen dos veces, pero cada vez con signo
distinto y el resultado es cero.

3. Si se multiplican todos los elementos de una fila de **A** por
un escalar *k*, el determinante de la nueva matrix **B** es igual al
producto de **k** por el determinante de **A**: $|k \mathbf{A}|= k |\mathbf{A}|$

$$\mathbf{B}=
\begin{pmatrix}
k a_{11} & k a_{12} & k a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$$

$$\begin{aligned}
|\mathbf{B}| = \\
  k a_{11} a_{22} a_{33} \\
+ k a_{12} a_{23} a_{31} \\
+ k a_{13} a_{21} a_{32} \\
- k a_{13} a_{22} a_{31} \\
- k a_{12} a_{21} a_{33} \\
- k a_{11} a_{23} a_{32} 
\end{aligned}
$$

En $|\mathbf{B}|$
se encuentran
los mismos sumandos
que en $|\mathbf{A}|$
pero multiplicados todos ellos por el escalar *k*.

4. Si se intercambian dos filas contiguas de **A** ,
el determinante de la matriz resultante **B**,
es igual al determinante de **A**, cambiado de
signo: $|\mathbf{B}|= - |\mathbf{A}|$

En efecto, sean **A** y **B**

$\mathbf{A}=
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$
 y
$\mathbf{B}=
\begin{pmatrix}
a_{21} & a_{22} & a_{23} \\
a_{11} & a_{12} & a_{13} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$. 


$$
\begin{aligned}
|\mathbf{A}| = \\
  a_{11} a_{22} a_{33} \quad (1) \\
+ a_{12} a_{23} a_{31} \quad (2) \\
+ a_{13} a_{21} a_{32} \quad (3) \\
- a_{13} a_{22} a_{31} \quad (4) \\
- a_{12} a_{21} a_{33} \quad (5) \\
- a_{11} a_{23} a_{32} \quad (6)
\end{aligned}
$$


$$
\begin{aligned}
|\mathbf{B}| = \\
  a_{21} a_{12} a_{33} \quad (5) \\
+ a_{22} a_{13} a_{31} \quad (4) \\
+ a_{23} a_{11} a_{32} \quad (6) \\
- a_{23} a_{12} a_{31} \quad (2) \\
- a_{22} a_{11} a_{33} \quad (1) \\
- a_{21} a_{13} a_{32} \quad (3) \\
\end{aligned}
$$

Los productos en los dos casos son los mismos, pero si empre con
signo contrario.

5. Sea **A**, **B** y **C** tres matrices del mismo orden, que son iguales
en todo menos en una fila y tales que los elementos de **C** para esa
fila son además iguales a la suma de los elementos homologos de **A**
y **B**. _En este caso_, el determinante de **C** es igual a la suma de los
determinantes de **A** y **B**:


Por ejemplo:

$\mathbf{A}=
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$
,
$\mathbf{B}=
\begin{pmatrix}
b_{11} & b_{12} & b_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$ 


y
$\mathbf{C}=
\begin{pmatrix}
a_{11} + b_{11} & a_{12} + b_{12} & a_{13} + b_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$ 

El determinante de **C** será:

$$
\begin{aligned}
|\mathbf{C}| = 
  c_{11} a_{22} a_{33} \\
+ c_{12} a_{23} a_{31} \\
+ c_{13} a_{21} a_{32} \\
- c_{13} a_{22} a_{31} \\
- c_{12} a_{21} a_{33} \\
- c_{11} a_{23} a_{32} 
\end{aligned}
$$

Si sustituimos $c_{11}=a_{11}+b_{11}$, $c_{12}=a_{12}+b_{12}$, $c_{13}=a_{13}+b_{13}$ queda:

$$
\begin{aligned}
|\mathbf{C}| = 
  a_{11} a_{22} a_{33} \\
+ a_{12} a_{23} a_{31} \\
+ a_{13} a_{21} a_{32} \\
- a_{13} a_{22} a_{31} \\
- a_{12} a_{21} a_{33} \\
- a_{11} a_{23} a_{32} \\
+ b_{11} a_{22} a_{33} \\
+ b_{12} a_{23} a_{31} \\
+ b_{13} a_{21} a_{32} \\
- b_{13} a_{22} a_{31} \\
- b_{12} a_{21} a_{33} \\
- b_{11} a_{23} a_{32} 
\end{aligned} =
|\mathbf{A}|+|\mathbf{B}|
$$



6. Transformemos una matriz **A** en otra matriz **B**, sumando a cada
uno de los elementos de una fila de **A**, el elemento que se
encuentra en su misma columna pero de otra fila determinada de **A**
y multipl icado por un escalar *k*, dejando el resto de filas igual.
Entonces el determinante de la nueva matriz **B** es igual al
determinante de **A**: $|\mathbf{A}|=|\mathbf{B}|$

Por ejemplo:

$\mathbf{A}=
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$
,
$\mathbf{B}=
\begin{pmatrix}
a_{11} + k a_{21} & a_{12} + k a_{22}& a_{13} + k a_{23}\\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$ 

Según la quinta propiedad de los determinantes, el determinante
de **B** es igual al determinante de **A**, más el determinante de una
matriz C, de la siguiente forma: $|\mathbf{B}|=|\mathbf{A}|+|\mathbf{C}|$

$$\mathbf{C}=
\begin{pmatrix}
k a_{21} & k a_{22}& + k a_{23}\\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}$$ 

Según la tercera propiedad de los determinantes, el determinante
de **C** es igual a

$$|\mathbf{C}|=
k \begin{vmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{vmatrix}$$

Y según la segunda propiedad de los determinantes: $|\mathbf{C}|= k 0 = 0$ luego:

$$|\mathbf{B}|=|\mathbf{A}|+|\mathbf{C}|=|\mathbf{A}|+0=|\mathbf{A}|$$

## Matriz adjunta e inversa de una matriz

### Definición de matriz adjunta de A: adj(A)

Se llama matriz adjunta de **A**, a la traspuesta de la matriz de los
adjuntos de los elementos de **A**, $|\mathbf{M}_{ij}|$, multiplicados por $(—1)^{(i+j)}$.
Para escribir la matriz adjunta de **A**, seguimos los siguientes
pasos :

1. Escribimos la matriz de los adjuntos:

$$
\begin{pmatrix}
|\mathbf{M}_{11}| & |\mathbf{M}_{12}| & |\mathbf{M}_{13}| \\
|\mathbf{M}_{21}| & |\mathbf{M}_{22}| & |\mathbf{M}_{23}| \\
|\mathbf{M}_{31}| & |\mathbf{M}_{32}| & |\mathbf{M}_{33}| \\
\end{pmatrix}$$

2. Multiplicamos los adjuntos por $(—1)^{(i+j)}$
es decir, les adjudicamos un signo del mismo modo que hemos hecho para el
cálculo del determinante:

$$
\begin{pmatrix}
|\mathbf{M}_{11}| & -|\mathbf{M}_{12}| & |\mathbf{M}_{13}| \\
-|\mathbf{M}_{21}| & |\mathbf{M}_{22}| & -|\mathbf{M}_{23}| \\
|\mathbf{M}_{31}| & -|\mathbf{M}_{32}| & |\mathbf{M}_{33}| \\
\end{pmatrix}$$

3. Trasponemos esta última matriz:


$$ adj(\mathbf{A})=\begin{pmatrix}
|\mathbf{M}_{11}| & -|\mathbf{M}_{21}| & |\mathbf{M}_{31}| \\
-|\mathbf{M}_{12}| & |\mathbf{M}_{22}| & -|\mathbf{M}_{32}| \\
|\mathbf{M}_{13}| & -|\mathbf{M}_{23}| & |\mathbf{M}_{33}| \\
\end{pmatrix}$$

$adj(\mathbf{A})$ es la matriz adjunta de **A**.

Observación : un adjunto, lo mismo que un determinante, es un número real.
Los elementos de la matriz adjunta por lo tanto son
números reales.

### Multiplicación de una matriz cuadrada **A** por su matriz adjunta $adj(\mathbf{A})$

Vamos a ver cual es el resultado de postmultiplicar una matriz
cuadrada **A** por su adjunta $adj(\mathbf{A})$:

$$
\mathbf{A} \ adj(\mathbf{A})=
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}
\begin{pmatrix}
|\mathbf{M}_{11}| & -|\mathbf{M}_{21}| & |\mathbf{M}_{31}| \\
-|\mathbf{M}_{12}| & |\mathbf{M}_{22}| & -|\mathbf{M}_{32}| \\
|\mathbf{M}_{13}| & -|\mathbf{M}_{23}| & |\mathbf{M}_{33}| \\
\end{pmatrix}
$$

La matriz resultante es
una matriz **B**, cuadrada de orden 3. Los elementos de la diagonal
de **B** son los siguientes:

$$b_{11}= a_{11} |\mathbf{M}_{11}| + a_{12} |\mathbf{M}_{12}| + a_{13} |\mathbf{M}_{13}|$$
$$b_{22}=-a_{21} |\mathbf{M}_{21}| + a_{22} |\mathbf{M}_{22}| + a_{23} |\mathbf{M}_{23}|$$
$$b_{33}= a_{31} |\mathbf{M}_{31}| + a_{32} |\mathbf{M}_{32}| + a_{33} |\mathbf{M}_{33}|$$

expresiones correspondientes
al desarrollo del determinante de **A**
según la primera, segunda y tercera filas respectivamente. Es decir,
los elementos de la diagonal de **B** son todos iguales e
iguales al determinante de **A**.


Vamos a ver ahora cuánto vale un elemento fuera de la diagonal,
por ejemplo el elemento $b_{12}$:

$$
\begin{aligned}
 b_{12} & = -a_{11} |\mathbf{M}_{21}| + a_{12} |\mathbf{M}_{22}| - a_{13} |\mathbf{M}_{23}|= \\
& -a_{11} 
\begin{vmatrix}
 a_{12} & a_{13} \\
 a_{32} & a_{33} \\
\end{vmatrix}
+ a_{12} 
\begin{vmatrix}
 a_{11} & a_{13} \\
 a_{31} & a_{33} \\
\end{vmatrix}
 - a_{13}
 \begin{vmatrix}
  a_{11} & a_{12} \\
  a_{31} & a_{32} \\
 \end{vmatrix} =\\
& -a_{11} 
  (a_{12} a_{33} -  a_{13}  a_{32}) \\
& + a_{12} 
  (a_{11} a_{33} - a_{13} a_{31})  \\
&  - a_{13}
   (a_{11} a_{31} - a_{12} a_{32})  \\
& = -a_{11} a_{12} a_{33} + a_{11} a_{13}  a_{32}
 + a_{12} a_{11} a_{33} \\
& - a_{12} a_{13} a_{31}
 - a_{13} a_{11} a_{31} + a_{13} a_{12} a_{32} = 0
\end{aligned}
$$

O de otro modo, se comprueba
que $b_{12}$ es igual al determinante de
la siguiente matriz:

$$
\begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{11} & a_{12} & a_{13} \\
a_{31} & a_{32} & a_{33} \\
\end{pmatrix}
$$

que por la segunda propiedad de los determinantes, es igual a
cero.

Se puede comprobar como todos los demás elementos no diagonales
de **B**
son iguales al determinante de una matriz que tiene dos
filas iguales, es decir, son todos cero.

De modo que el producto de **A** por su adjunta $adj(\mathbf{A})$ es una matriz
en la que los elementos de la diagonal son iguales al escalar 
determinante de **A**:

$$
\mathbf{A} \ adj(\mathbf{A})= \begin{pmatrix}
|\mathbf{A}| & 0 & 0 \\
0 & |\mathbf{A}| & 0 \\
0 & 0 & |\mathbf{A}| \\
\end{pmatrix}= |\mathbf{A}| \ \mathbf{I}_3 
$$

### Inversa de una matriz cuadrada **A** 

El producto de la matriz cuadrada **A**, de orden *n* por su matriz
adjunta, es igual a la matriz unidad de orden *n*, multiplicada por
el escalar $|\mathbf{A}|$ (determinante de **A**).

$$
\mathbf{A} \ adj(\mathbf{A})= |\mathbf{A}| \ \mathbf{I}_n 
$$

Como el deteminante de **A** es un escalar, se puede tranformar la
expresión anterior, de la siguiente forma:

$$
\mathbf{A} \frac{1}{|\mathbf{A}|} adj(\mathbf{A})=  \ \mathbf{I}_n 
$$

Según la definición de inversa de **A** 
(ver [INVERSA DE UNA MATRIZ CUADRADA][]),
la expresión 

$$\mathbf{A}^{-1}=\frac{1}{|\mathbf{A}|} adj(\mathbf{A})$$

es la inversa de **A** porque el producto de **A** por ella es igual a
la matriz unidad de orden n.


### Inversa de una matriz diagonal

Una matriz diagonal es especialmente fácil de invertir.
Sea 

$$
\mathbf{A} =
\begin{pmatrix}
a_{11} & 0 & 0 \\
0 & a_{22} & 0 \\
0 & 0 & a_{33} \\
\end{pmatrix}
$$

Se puede comprobar fácilmente que su inversa es:

$$\mathbf{A}^{-1}=
\begin{pmatrix}
\frac{1}{a_{11}} & 0 & 0 \\
0 & \frac{1}{a_{22}} & 0 \\
0 & 0 & \frac{1}{a_{33}} \\
\end{pmatrix}
$$

La inversa de una
matriz diagonal **A** es otra matriz diagonal **B**
cuyos elementos no
nulos son iguales a los inversos de los
elementos homólogos
de **A**: $b_{ii}=1/a_{ii}$.

### Inversa del producto de dos matrices cuadradas

Sea la matriz cuadrada **C** igual al producto de dos matrices
cuadradas **A** y **B** : $\mathbf{C}=\mathbf{A}\mathbf{B}$
La matriz $\mathbf{D}=\mathbf{B}^{-1}\mathbf{A}^{-1}$
es la matriz inversa de **C**, ya que el
producto de **D** por **C** es igual
a la matriz unidad: $\mathbf{DC}=\mathbf{I}_n$.

En efecto:

$\mathbf{DC}=\mathbf{B}^{-1}\mathbf{A}^{-1}\mathbf{A}\mathbf{B}=\mathbf{B}^{-1}\mathbf{B}=\mathbf{I}_n$

La inversa del producto de
dos matrices cuadradas es
igual al producto de
las inversas
de las dos matrices
en dirección
contraria.

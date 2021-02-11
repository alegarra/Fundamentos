# Sistemas de ecuaciones

## Ecuaciones en el álgebra de las matrices

### Definición de un sistema de ecuaciones y su solución

Un sistema de ecuaciones en el álgebra de los números reales es un conjunto de ecuaciones formadas por numeros rea1es e incógnitas, como por ejemplo el siguiente:

$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$  x_1 -   x_2 + 2 \times x_3 =  5$$
$$2 \times x_1 + 2 \times x_2 + 2 \times x_3 = 12$$  
 
Una solución del sistema de ecuaciones es un conjunto de números reales tales que, sustituyendo 1as incógnitas por esos números, todas las ecuaciones sean verdaderas al mismo tiempo. 

En nuestro ejemplo, se puede sustituir la incógnita $x_1$ por el número 1, $x_2$ por 2 y $x_3$ por 3, siendo verdadero que: 

$$4 \times 1 + 5 \times2 - 3 \times 3 =  5$$
$$  1 -   2 + 2 \times 3 =  5$$
$$2 \times 1 + 2 \times 2 + 2 \times 3 = 12$$  

Por 10 tanto $(x_1 =1; x_2=2; x_3=3)$ es una solución del sistema de ecuaciones. 

Si el sistema de ecuaciones tiene menos ecuaciones que incógnitas, se puede encontrar un numero infinito de combinaciones de números que cumplen las ecuaciones. Por ejemplo si el sistema es:

$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$  x_1 -   x_2 + 2 \times x_3 =  5$$

$(x_1 =1; x_2=2; x_3=3)$ sería una solución del sistema, pero tambien lo sería $(x_1 =23/9; x_2=-4/9; x_3=1)$, lo mismo que $(x_1 =18/11; x_2=1; x_3=24/11)$ y otras muchas combinaciones de números. 


En la valoración genética de los animales también se trabaja con sistemas de ecuaciones y éstas se pueden resolver más fácilmente en el álgebra de matrices. 


### Un sistemas de ecuaciones en notación matricial

Con ayuda de la operación "multiplicación de matrices", se puede escribir un sistema de ecuaciones en notación matricial .

Tomando los primeros miembros de las ecuaciones (obviando las incógnitas), se obtiene la matriz de los coeficientes $\mathbf{A}$: 

$$
\mathbf{A}=\begin{bmatrix}
 4 & 5 & -3\\ 
 1 & -1 & 2\\
 2 & 2 & 2 \\
\end{bmatrix}
$$

Los valores a la derecha de los signos de igualdad así como las incógnitas se pueden escribir como vectores columna:


$$
\mathbf{y}=\begin{bmatrix}
 5\\
 5\\
 12\\
\end{bmatrix}
$$


$$
\mathbf{b}=\begin{bmatrix}
 x_1\\
 x_2\\
 x_3\\
\end{bmatrix}
$$


Entonces, el sistema de ecuaciones en notación matricial será: 

$$\mathbf{A} \times \mathbf{b}= \mathbf{y}$$ 

o lo que es lo mismo: 

$$
\begin{bmatrix}
 4 & 5 & -3\\
 1 & -1 & 2\\
 2 & 2 & 2 \\
\end{bmatrix} 
\begin{bmatrix}
 x_1\\
 x_2\\
 x_3\\
\end{bmatrix} = 
\begin{bmatrix}
 5\\
 5\\
 12\\
\end{bmatrix}
$$ 

Efectivamente, llevando a cabo la multiplicación de $\mathbf{A}$ por $\mathbf{b}$, resulta: 

$$
\begin{bmatrix}
 4 \times x_1 + 5 \times x_2 - 3 \times x_3\\
 x_1 - x_2 + 2 \times x_3 \\
 2 \times x_1 + 2 \times x_2 + 2 \times x_3\\
\end{bmatrix} =
\begin{bmatrix}
 5\\
 5\\
 12\\
\end{bmatrix}
$$


Un sistema de ecuaciones en  notación matricial queda reducido a una sola ecuación. 

### Solución de ecuaciones en el álgebra de las matricies. 

Sea el sistema de ecuaciones en notación matricial:

$$\mathbf{A}  \mathbf{b} = \mathbf{y}$$


Para hallar una solución al sistema, es decir valores para $\mathbf{b}$, hay que despejar $\mathbf{b}$ en la ecuación. Esto se puede hacer mediante la inversa de $\mathbf{A}$.

Multiplicando por la izquierda a ambos lados del signo igualdad por la matriz $\mathbf{A^{-1}}$ resulta:

$$\mathbf{A}^{-1}  \mathbf{A}  \mathbf{b} = \mathbf{A}^{-1}  \mathbf{y}$$

Como la multiplicación es asociativa: 

$$\left(\mathbf{A}^{-1} \mathbf{A}\right)  \mathbf{b} = \mathbf{A}^{-1}  \mathbf{y}$$

Por la definición de inversa, $\mathbf{A}^{-1} \mathbf{A}$ es la matriz identidad o unidad:

$$\mathbf{I}  \mathbf{b} = \mathbf{A}^{-1}  \mathbf{y}$$

Y una propiedad de la matriz identidad es que $\mathbf{I}  \mathbf{b} = \mathbf{b}$, luego la solución es: 

$$\mathbf{b}=\mathbf{A^{-1}} \mathbf{y}$$

En el ejemplo: 

* El determinante de $\mathbf{A}$ es: 
$$\left| \mathbf{A} \right| = 4 \times (-1) \times 2 + 5 \times 2 \times 2 + (-3) \times 1 \times 2 - (-3) \times (-1) \times 2 - 5 \times 1 \times 2 -  4 \times 2 \times 2 = -26$$ 
* La inversa de $\mathbf{A}$ es: 
$$\mathbf{A^{-1}} = \frac{1}{\left| \mathbf{A} \right|} adj(\mathbf{A}) = -1/26 \begin{bmatrix}
 -6 & -16 & 7\\
 2 & 14 & -11\\
 4 & 2 & -9 \\
\end{bmatrix}$$

* Y la solución: 

$$\mathbf{b}=\begin{bmatrix}
x_1\\
x_2\\
x_3\\
\end{bmatrix} = -1/26 \begin{bmatrix}
 -6 & -16 & 7\\
 2 & 14 & -11\\
 4 & 2 & -9 \\
\end{bmatrix} 
\begin{bmatrix}
 5\\
 5\\
 12\\
\end{bmatrix} = 
\begin{bmatrix}
 1\\
 2\\
 3\\
\end{bmatrix}
$$

coincide con la que ya conocíamos. 

## Rango de la matriz de coeficientes de un sistema ecuaciones

### Sistemas de ecuaciones con un numero infinito de soluciones


#### Algebras de los números reales


Ya se ha visto que un sistema de ecuaciones con más incógnitas que ecuaciones, tiene un número infinito de soluciones.

También puede ocurrir que en un sistema de ecuaciones con el mismo número de incógnitas que de ecuaciones, una de éstas sea una combinación lineal de las otras. En este caso, esta ecuación no aporta nueva información al sistema y por lo tanto es innecesaria. El número de ecuaciones del sistema es realmente inferior al número de incógnitas. 

Partiendo del segundo sistema de ecuaciones presentado, podemos construir los siguientes nuevos sistemas: 

$(1)$
$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$  x_1 -   x_2 + 2 \times x_3 =  5$$
$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 = 5$$

en el que la tercera ecuación es igual a una vez la primera más cero veces la segunda

$(2)$
$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$  x_1 -   x_2 + 2 \times x_3 =  5$$
$$6 \times x_1 + 3 \times x_2 - x_3 = 5$$

en el que la tercera ecuación es igual a la primera más dos veces la segunda y 

$(3)$
$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$  x_1 -   x_2 + 2 \times x_3 =  5$$
$$7 \times x_1 + 11 \times x_2 - 8 x_3 = -15$$

en el que la tercera ecuación es igual a dos veces la primera menos la segunda. 


Aunque estos sistemas de ecuaciones tienen tres ecuaciones cada uno, la tercera ecuación no aporta en ningún caso nueva información,  porque es linealmente dependiente de las otras. Los tres sistemas tienen un número infinito de soluciones. Si queremos resolverlos por los métodos clásicos del álgebra de los números reales, llegaremos siempre a la expresión 0 = 0. Sólo encontraremos una solución, si previamente damos un valor arbritario a $x_1$, $x_2$ o $x_3$, o si añadimos arbitrariamente una tercera ecuación independiente. Pero el número de soluciones posibles es infinito.


#### Algebra de las matrices


Las matrices de coeficientes de los tres sistemas de ecuaciones anteriores son las siguientes:

$$
\mathbf{A}_1=\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
4 & 5 & -3\\
\end{bmatrix} ; \mathbf{A}_2=\begin{bmatrix}
4 & 5 & -3\\
1 & -1 & 2\\
6 & 3 & 1 \\
\end{bmatrix} ; \mathbf{A}_3=\begin{bmatrix}
4 &  5 & -3\\
1 & -1 & 2\\
7 & 11 & -6\\
\end{bmatrix}
$$

En las tres matrices $\mathbf{A}_1$, $\mathbf{A}_2$ y $\mathbf{A}_3$ se puede comprobar que hay una dependencia lineal entre las filas. Por ejemplo:

$$
\mathbf{A}_2=\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
4 + 2 \times 1 & 5+2 \times (-1)  & (-3) + 2 \times 2\\
\end{bmatrix}
$$


Así, según la quinta propiedad de los determinantes, el determinante de $A_2$ es: 

$$
\left| \mathbf{A}_2 \right| =  \begin{vmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
4 & 5 & -3\\
\end{vmatrix}  +  \begin{vmatrix} 
4 & 5 & -3 \\
1 & -1 & 2 \\
(2 \times 1) & (2 \times (-1))  & (2 \times 2)\\
\end{vmatrix} 
$$

Y según la tercera propiedad de los determinantes: 

$$
\left| \mathbf{A}_2 \right| =  \begin{vmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
4 & 5 & -3\\
\end{vmatrix}  + 2  \begin{vmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
1 & -1 & 2\\
\end{vmatrix}
$$


De acuerdo con la segunda propiedad de los determinantes, estos dos últimos determinantes son cero, de modo que: 

$$
\left| \mathbf{A_2} \right| = 0 
$$ 

Del mismo modo son $\left| \mathbf{A_1} \right| = \left| \mathbf{A_3} \right| = \left| \mathbf{A_2} \right| = 0$ 

Para resolver los tres sistemas de ecuaciones necesitamos hallar las inversas de $\mathbf{A_1}$, $\mathbf{A_3}$ y $\mathbf{A_2}$.

$$ 
\mathbf{A}_1^{-1} = \frac{1}{\left| \mathbf{A_1} \right|}  adj(\mathbf{A_1})
$$

Como $\left| \mathbf{A}_1 \right| = 0$, $(1/ \left| A_1 \right| ) = \infty$ y no se puede encontrar ninguna inversa de $A_1$. Una matriz con determinante nulo, no tiene inversa y por lo tanto no se puede resolver el sistema de ecuaciones correspondiente. Una matriz de este tipo se llama MATRIZ SINGULAR. En el álgebra de matrices, del mismo modo que en el álgebra de los numeros reales, no se puede encontrar una solución única para estos tres sistemas de ecuaciones. 

### Rango de una matriz

Siempre que en un sistema de ecuaciones el número de ecuaciones independientes sea inferior al número de incógnitas, el determinante de la matriz de coeficientes correspondiente es nulo (0). 

Si el número de ecuaciones independientes es igual al número de incógnitas ($n$) menos 2 (es decir $n-2$), el determinante de la matriz de los coeficientes es nulo y además todos los subdeterminantes de dimensión $(n-1)$ son también nulos. 

Si el número de ecuaciones independientes es $(n-3)$, serán también nulos todos los subdeterminantes de dimensión $(n-2)$ etc.

Sea por ejemplo la matriz: 

$$
\mathbf{A}  =  \begin{vmatrix}
1 & 2 & 3 \\
2 & 4 & 6 \\
3 & 6 & 9\\
\end{vmatrix}
$$

esta matriz tiene dimensión 3, pero dos dependencias lineales, es decir, solamente tiene una ecuación independiente.

El determinante de $\mathbf{A}$ es: 

$$
\left| \mathbf{A} \right| = 1 \times 4 \times 9 + 2 \times 6 \times 3 + 3 \times 2 \times 6 - 1 \times 6 \times 6 - 2 \times 2 \times 9 - 3 \times 4 \times 3 = 0
$$ 


Y todos los subdeterminantes de orden 2 son también nulos: 

$$ 
\begin{vmatrix}
1 & 2 \\
2 & 4\\
\end{vmatrix} = 
1 \times 4 - 2 \times 2 =0; 
\begin{vmatrix}
1 & 3\\
2 & 6\\
\end{vmatrix} =
1 \times 6 - 2 \times 3 =0
$$

$$
\begin{vmatrix}
2 & 3\\
4 & 6\\
\end{vmatrix} =
2 \times 6 - 4 \times 3 = 0;
\begin{vmatrix}
1 & 2\\
3 & 6\\
\end{vmatrix} =
1 \times 6 - 3 \times 2 = 0
$$


$$
\begin{vmatrix}
1 & 3\\
3 & 9\\
\end{vmatrix} =
1 \times 9 - 3 \times 3 =0;
\begin{vmatrix}
2 & 3\\
6 & 9\\
\end{vmatrix} =
2 \times 9 - 6 \times 3 =0
$$


$$
\begin{vmatrix}
2 & 4 \\
3 & 6 \\
\end{vmatrix} =
2 \times 6 - 3 \times 4 =0;
\begin{vmatrix}
2 & 6 \\
3 & 9 \\
\end{vmatrix} =
2 \times 9 - 3 \times 6 =0
$$

$$
\begin{vmatrix}
4 & 6 \\
6 & 9 \\
\end{vmatrix} =
4 \times 9 - 6 \times 6 =0;
$$


En cambio los elementos de la matriz, que se pueden considerar como subdeterminantes de dimensión 1, no son todos nulos. El rango de esta matriz es 1, que es la dimensión del mayor subdeterminante no nulo. 

EL RANGO DE UNA MATRIZ ES IGUAL A LA DIMENSION DE SU MAYOR SUBDETERMINANTE NO NULO Y SE CORRESPONDE CON EL NUMERO DE ECUACIONES INDEPENDIENTES QUE TIENE EL SISTEMA DE ECUACIONES CORRESPONDIENTE.

Una matriz singular, cuyo determinante es cero, tiene un rango incompleto. 

Una matriz cuyo rango es igual a su dimensión, tiene rango completo. 

Observación: una matriz no cuadrada, también tiene rango. Por ejemplo la matriz 
$\begin{pmatrix}
1 & 2 & 3 \\
6 & 9 & 8 \\
\end{pmatrix}$ 
es de rango 2, dado que, por ejemplo, la submatriz de dimensión 2 
$\begin{pmatrix}
1 & 2 \\
6 & 9 \\
\end{pmatrix}$ tiene un determinante de -3.


## Operadores elementales y sistemas de ecuaciones 

### Operaciones elementales en filas y columnas


Las siguientes operaciones con las filas o columnas de una matriz $\mathbf{A}$, se llaman operaciones elementales: 

1. intercambio de dos filas (columnas)
2. multiplicación de todos los elementos de una fila (columna) por un escalar $k$
3. adición a una fila (columna), de otra multiplicada por un escalar 

Cuando se lleva a cabo alguna de estas operaciones, la matriz original $\mathbf{A}$ se transforma en otra matriz $\mathbf{B}$, cuyas filas (columnas) son combinaciones lineales de las filas (columnas) de $\mathbf{A}$. Entonces se dice que $\mathbf{A}$ y $\mathbf{B}$ son MATRICES EQUIVALENTES. 

El determinante de la matriz $\mathbf{B}$ no es independiente del determinante de $\mathbf{A}$. A partir de las propiedades de los determinantes se pueden comprobar fácilmente las siguientes afirmaciones: 

- Si $\mathbf{B}$ es el resultado de una operación elemental del primer o tercer tipo, entonces el determinante de $\mathbf{B}$ es igual al determinante de $\mathbf{A}$: $\left| \mathbf{B} \right| = \left| \mathbf{A} \right|$

- Si $\mathbf{B}$ es el resultado de una operación lineal del segundo tipo, el determinante de $\mathbf{B}$ es igual al determinante de $\mathbf{A}$ multiplicado por el escalar $k$: $\mathbf{A}$: $\left| \mathbf{B} \right| = k \left| \mathbf{A} \right|$ 

Una operación elemental con filas de $\mathbf{A}$ se lleva a cabo premultiplicando $\mathbf{A}$ por una determinada matriz cuadrada no singular $\mathbf{L}$. En la i_ésima fila de $\mathbf{L}$ se encuentran los escalares por los que hay que multiplicar cada fila de $\mathbf{A}$ para obtener la i_ésima fila de $\mathbf{B}$. 

Por ejemplo, para intercambiar las filas primera y segunda en la matriz $\mathbf{A}$, dando lugar a $\mathbf{B_1}$: 

$$
\mathbf{A}=\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2  \\
2 & 2 & 2 \\
\end{bmatrix} ; 
\mathbf{B_1}=\begin{bmatrix}
1 & -1 & 2 \\
4 & 5 & -3 \\
2 & 2 & 2 \\
\end{bmatrix} 
$$

La primera fila de $\mathbf{B_1}$ es igual a: 

$$
\begin{matrix}
  & 0 \times \textrm{la primera fila de } \mathbf{A}\\
+ & 1 \times \textrm{la segunda fila de } \mathbf{A}\\
+ & 0 \times \textrm{la tercera fila de } \mathbf{A}\\
\end{matrix} 
$$

La segunda fila de $\mathbf{B_1}$ es igual a:

$$
\begin{matrix}
  & 1 \times \textrm{la primera fila de } \mathbf{A}\\
+ & 0 \times \textrm{la segunda fila de } \mathbf{A}\\
+ & 0 \times \textrm{la tercera fila de } \mathbf{A}\\
\end{matrix} 
$$



La tercera fila de $\mathbf{B_1}$ es igual a:

$$
\begin{matrix}
  & 0 \times \textrm{la primera fila de } \mathbf{A}\\
+ & 0 \times \textrm{la segunda fila de } \mathbf{A}\\
+ & 1 \times \textrm{la tercera fila de } \mathbf{A}\\
\end{matrix} 
$$

Los escalares por los que hay que multiplicar cada fila de $\mathbf{A}$ para obtener las filas de $\mathbf{B_1}$ son por lo tanto: 

- para la primera fila de $\mathbf{B_1}$: 0, 1 y 0 
- para la segunda fila de $\mathbf{B_1}$: 1, 0 y 0
- para la tercera fila de $\mathbf{B_1}$: 0, 0 y 1

$$
\mathbf{L_1}=\begin{bmatrix}
0 & 1 & 0\\
1 & 0 & 0\\
0 & 0 & 1\\
\end{bmatrix} 
$$


$\mathbf{L_1}$ es el operador elemental que intercambia las filas 1 y 2: 

$$\mathbf{L_1} \mathbf{A} = \mathbf{B} $$ 

$$
\begin{bmatrix}
0 & 1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 1 \\
\end{bmatrix} 
\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
2 & 2 & 2 \\
\end{bmatrix}
 = 
\begin{bmatrix}
1 & -1 & 2 \\
4 & 5 & -3 \\
2 & 2 & 2 \\
\end{bmatrix}
$$

Un segundo ejemplo: ahora queremos transformar la matriz $\mathbf{A}$ en otra matriz $\mathbf{B_2}$. La tercera fila de $\mathbf{B_2}$ ha de ser igual a la suma de la primera fila de $\mathbf{A}$ multiplicada por 5 y de la segunda fila de $\mathbf{A}$. 


$$
\mathbf{B_2} = 
\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
5 \times 4 + 2 & 5 \times 5 + 2 & 5 \times (-3) + 2 \\
\end{bmatrix}
 =
\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
22 & 27 & -13 \\
\end{bmatrix}
$$

La primera fila de $\mathbf{B_2}$ es igual a:

$$
\begin{matrix}
  & 1 \times \textrm{la primera fila de } \mathbf{A}\\
+ & 0 \times \textrm{la segunda fila de } \mathbf{A}\\
+ & 0 \times \textrm{la tercera fila de } \mathbf{A}\\
\end{matrix}
$$

La segunda fila de $\mathbf{B_2}$ es igual a:

$$
\begin{matrix}
  & 0 \times \textrm{la primera fila de } \mathbf{A}\\
+ & 1 \times \textrm{la segunda fila de } \mathbf{A}\\
+ & 0 \times \textrm{la tercera fila de } \mathbf{A}\\
\end{matrix}
$$

La tercera fila de $\mathbf{B_2}$ es igual a:

$$
\begin{matrix}
 & 5 \times \textrm{la primera fila de } \mathbf{A}\\
+ & 0 \times \textrm{la segunda fila de } \mathbf{A}\\
+ & 1 \times \textrm{la tercera fila de } \mathbf{A}\\
\end{matrix}
$$

Los escalares son, por lo tanto: 

- para la primera fila de $\mathbf{B_2}$: 1, 0 y 0
- para la segunda fila de $\mathbf{B_2}$: 0, 1 y 0
- para la tercera fila de $\mathbf{B_2}$: 5, 0 y 1

$$
\mathbf{L_2}=\begin{bmatrix}
1 & 0 & 0\\
0 & 1 & 0\\
5 & 0 & 1\\
\end{bmatrix}
$$

El operador elemental es $\mathbf{L_2}$: 

$$\mathbf{L_2} \mathbf{A} = \mathbf{B} $$

$$
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
5 & 0 & 1 \\
\end{bmatrix}
\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
2 & 2 & 2 \\
\end{bmatrix}
 =
\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
22 & 27 & -13 \\
\end{bmatrix}
$$


Para llevar a cabo en $\mathbf{A}$ una operacion elemental con columnas, hay que postmultiplicar $\mathbf{A}$ por una matriz cuadrada no singular $\mathbf{M}$. Esta matriz $\mathbf{M}$ es la traspuesta de la matriz de los escalares por los que hay que multiplicar las columnas de $\mathbf{A}$ para transformarla en $\mathbf{B}$.

Por ejemplo, transformemos $\mathbf{A}$ en $\mathbf{B_3}$, de modo que las columnas primera y segunda de $\mathbf{B_3}$ sean respectivamente iguales a las columnas segunda y primera de $\mathbf{A}$ (intercambio de columnas) y la tercera columna de $\mathbf{B_3}$ sea igual a la suma de las columnas segunda y tercera de $\mathbf{A}$. 

Se trata de dos operaciones elementales: suma de dos columnas e intercambio otras dos. La primera operación se puede llevar a cabo mediante postmultiplicación por la matriz $\mathbf{M_1}$, transformando después el producto en otra matriz equivalente postmultiplicando por la matriz $\mathbf{M_2}$: 

$$\mathbf{B_3}=(\mathbf{A} \times \mathbf{M_1}) \times \mathbf{M_2}$$

aunque también se puede hacer en un solo paso: 

$$\mathbf{B_3}=\mathbf{A} \times (\mathbf{M_1} \times \mathbf{M_2})=\mathbf{A} \times \mathbf{M_3}$$

Aqui se mostrará únicamente la matriz $\mathbf{M_3}$. Como ejercicio se recomienda hallar las matrices $\mathbf{M_1}$ y $\mathbf{M_2}$ y comprobar que su producto es la matriz $\mathbf{M_3}$.

La primera columna de $\mathbf{B_3}$ es igual a:  

$$
\begin{matrix}
 & 0 \times \textrm{la primera columna de } \mathbf{A}\\
+ & 1 \times \textrm{la segunda columna de } \mathbf{A}\\
+ & 0 \times \textrm{la tercera columna de } \mathbf{A}\\
\end{matrix}
$$


La segunda columna de $\mathbf{B_3}$ es igual a:

$$
\begin{matrix}
 & 1 \times \textrm{la primera columna de } \mathbf{A}\\
+ & 0 \times \textrm{la segunda columna de } \mathbf{A}\\
+ & 0 \times \textrm{la tercera columna de } \mathbf{A}\\
\end{matrix}
$$

La tercera columna de $\mathbf{B_3}$ es igual a:

$$
\begin{matrix}
 & 0 \times \textrm{la primera columna de } \mathbf{A}\\
+ & 1 \times \textrm{la primera columna de } \mathbf{A}\\
+ & 0 \times \textrm{la primera columna de } \mathbf{A}\\
\end{matrix}
$$

Los escalares necesarios son por lo tanto: 

- para la primera columna de $\mathbf{B_3}$: 0, 1 y 0
- para la segunda columna de $\mathbf{B_3}$: 1, 0 y 0
- para la tercera columna de $\mathbf{B_3}$: 0, 1 y 1

$$
\mathbf{M_3}'=\begin{bmatrix}
0 & 1 & 0\\
1 & 0 & 0\\
0 & 1 & 1\\
\end{bmatrix}
$$


Y la transformación: $\mathbf{A} \times \mathbf{M_3} = \mathbf{B}$ 

$$
\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
2 & 2 & 2 \\
\end{bmatrix}
\begin{bmatrix}
0 & 1 & 0 \\
1 & 0 & 1 \\
0 & 0 & 1 \\
\end{bmatrix}
 =
\begin{bmatrix}
5 & 4 & 2 \\
-1 & 1 & 1 \\
2 & 2 & 4 \\
\end{bmatrix}
$$


### Forma canónica de una matriz cuadrada. Cálculo del rango de una matriz. 

Cualquier matriz cuadrada puede transformarse en una matriz diagonal equivalente por medio de operadores elementales. 

Veamos el modo de diagonalizar la matriz de nuestro ejemplo: 

- para ello transformamos primero $\mathbf{A}$ en una matriz triangular, por medio de operaciones con filas: $\mathbf{L} \times \mathbf{A} = \mathbf{T}$ (triangular). 

- a continuación transforma $\mathbf{T}$ en una matriz diagonal, mediante operaciones con columnas: $\mathbf{T} \times \mathbf{M}=\mathbf{D}$ (diagonal)

Operaciones con filas: el objetivo es conseguir que haya ceros en los lugares (2,1), (3,1) y (3,2). Una de las muchas posibilidades es, por ejemplo, llevar a cabo los dos siguientes pasos: 

(1): $\mathbf{L_1} \times \mathbf{A}=\mathbf{B}$

- Primera fila de $\mathbf{B_1}$ = primera fila de $\mathbf{A}$
- Segunda fila de $\mathbf{B_1}$ = segunda fila de $\mathbf{A}$, menos .25 por la primera fila de $\mathbf{A}$
- Tercera fila de $\mathbf{B_1}$ = tercera fila de $\mathbf{A}$, menos .5 por la primera fila de $\mathbf{A}$


$$
\begin{bmatrix}
0 & 1 & 0 \\
-1/4 & 0 & 1 \\
-1/2 & 0 & 1 \\
\end{bmatrix}
\begin{bmatrix}
4 & 5 & -3 \\
1 & -1 & 2 \\
2 & 2 & 2 \\
\end{bmatrix}
 =
\begin{bmatrix}
4 & 5 & -3 \\
0 & -9/4 & 11/4 \\
0 & -1/2 & 7/2 \\
\end{bmatrix}
$$



(2): $\mathbf{L_2} \times \mathbf{B_1}=\mathbf{B_2}$

- Primera fila de $\mathbf{B_2}$ = primera fila de $\mathbf{B_1}$
- Segunda fila de $\mathbf{B_2}$ = segunda fila de $\mathbf{B_1}$
- Tercera fila de $\mathbf{B_2}$ = tercera fila de $\mathbf{B_1}$, menos 2/9 de la primera fila de $\mathbf{B_1}$


$$
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 2/9 & 1 \\
\end{bmatrix}
\begin{bmatrix}
4 & 5 & -3 \\
1 & -9/4 & 11/4 \\
0 & -1/2 & 7/2 \\
\end{bmatrix}
 =
\begin{bmatrix}
4 & 5 & -3 \\
0 & -9/4 & 11/4 \\
0 & 0 & 26/9 \\
\end{bmatrix}
$$


Operaciones con columnas: el objetivo ahora es conseguir ceros en las posiciones (1,2), (1,3) y (2,3). Una posibilidad es la siguiente: 

(3): $\mathbf{B_2} \times \mathbf{M_1}=\mathbf{B_3}$

- Primera columna de $\mathbf{B_3}$ = primera columna de $\mathbf{B_2}$
- Segunda columna de $\mathbf{B_3}$ = segunda columna, menos 5/4 de la primera columna de $\mathbf{B_2}$
- Tercera columna de $\mathbf{B_3}$ = tercera columna más 3/4 de la primera columna de $\mathbf{B_2}$


$$
\begin{bmatrix}
4 & 5 & -3 \\
0 & -9/4 & 11/4 \\
0 & 0 & 26/9 \\
\end{bmatrix}
\begin{bmatrix}
1 & 5/4 & 3/4 \\
0 & 1 & 0 \\
0 & 0 & 1 \\
\end{bmatrix}
 =
\begin{bmatrix}
4 & 0 & 0 \\
0 & -9/4 & 11/4 \\
0 & 0 & 26/9 \\
\end{bmatrix}
$$



(4): $\mathbf{B_3} \times \mathbf{M_2}=\mathbf{B}$

- Primera columna de $\mathbf{B}$ = primera columna de $\mathbf{B_3}$
- Segunda columna de $\mathbf{B}$ = segunda columna de $\mathbf{B_3}$
- Tercera columna de $\mathbf{B}$ = tercera columna más 11/9 de la segunda columna de $\mathbf{B_3}$


$$
\begin{bmatrix}
4 & 0 & 0 \\
0 & -9/4 & 11/4 \\
0 & 0 & 26/9 \\
\end{bmatrix}
\begin{bmatrix}
1 & 0 & 0 \\
0 & 1 & 11/9 \\
0 & 0 & 1 \\
\end{bmatrix}
 =
\begin{bmatrix}
4 & 0 & 0 \\
0 & -9/4 & 0 \\
0 & 0 & 26/9 \\
\end{bmatrix}
$$


Por medio de operadores elementales se ha llevado a cabo una transformación lineal de la matriz $\mathbf{A}$ en una matriz diagonal equivalente: 




$\mathbf{L_2} \times \mathbf{L_1} \times \mathbf{A} \times \mathbf{M_1} \times \mathbf{M_2} = \mathbf{L} \times \mathbf{A} \times \mathbf{M} = \times \mathbf{D}$ (diagonal)


No hay una única matriz diagonal equivalente de $\mathbf{A}$

El determinante de una matriz $\mathbf{D}$ diagonal y equivalente de $\mathbf{A}$ es igual al determinante de $\mathbf{A}$, o al determinante de $\mathbf{A}$ multiplicado por un escalar, ya que la transformación de $\mathbf{A}$ en $\mathbf{B}$ se hace mediante operadores elementales (ver 3.3.1). En nuestro ejemplo, 

$$ \left| \mathbf{D} \right| = 4 \times (-9/4) \times (26/9) = -26 = \left| \mathbf{A} \right| $$ 

El determinante de una matriz diagonal es igual al producto de los elementos de la diagonal. Si $\mathbf{A}$ tiene rango completo, no puede haber ningún cero en la diagonal de $\mathbf{D}$, porque, si no, el determinante de $\mathbf{D}$ sería cero y esto no puede ser, ya que hemos dicho que $\left| \mathbf{D} \right| = k \left| \mathbf{A} \right|$ donde ni $k$ ni $\left| \mathbf{A} \right|$ son cero. En cambio, si $\mathbf{A}$ no tiene rango completo, tiene que haber necesariamente por lo menos un cero sobre la diagonal. El número de ceros que se encuentran en la diagonal de $\mathbf{D}$ es igual al número de filas dependientes que se encuentran en $\mathbf{A}$. El número de elementos no nulos en la diagonal de $\mathbf{D}$ es igual al rango de $\mathbf{A}$.

Una matriz equivalente especial es la FORMA CANONICA de $\mathbf{A}$. Esta matriz esta compuesta únicamente por ceros y unos y tiene la siguiente estructura: 

$$\begin{bmatrix}
\mathbf{I}_r & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r}   & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix}
$$

donde $\mathbf{I}_r$ es una matriz unidad de dimensión $r$, igual al rango de $\mathbf{A}$, y el resto de submatrices son matrices nulas. 

Por ejemplo, la forma canónica de una matriz de dimensión $\mathrm{4\times4}$ y rango 2 es: 

$$
\begin{bmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 \\
\end{bmatrix}
$$


### Eigenvalues and eigenvectors 

Cuando existe una matriz $\mathbf{U}$, tal que $\mathbf{U}^{-1} \times \mathbf{A} \times \mathbf{U} = \mathbf{D}$ donde  $\mathbf{D}$ es una matriz diagonal, se denomina "eigenvalues" a los valores de la diagonal de $\mathbf{D}$ y "eigenvectors" a las filas de $\mathbf{U}$. 

La mayor parte de los sistemas de ecuaciones que hay que resolver en mejora genética son sistemas cuyas matrices de coeficientes son simétricas. En estos casos, el operador por columnas $\mathbf{U}$ es igual a la traspuesta del operador por filas  $\mathbf{U^{-1}}$: $\mathbf{U'} =  \mathbf{U^{-1}}$.
Se dice entonces que esta matriz es ORTOGONAL. Las matrices ortogonales son muy valiosas para simplificar la solución de sistemas de ecuaciones. 

### Operaciones elementales en sistemas de ecuaciones 

Sea $\mathbf{A}$ la matriz de coeficientes de un sistema de ecuaciones son rango completo: $\mathbf{A}  \mathbf{b} =  \mathbf{y}$ 

En nuestro ejemplo, $\mathbf{A}$ es la matriz de coeficientes del siguiente sistema de ecuaciones: 

(1) 

$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$  x_1 -   x_2 + 2 \times x_3 =  5$$
$$2 \times x_1 + 2 \times x_2 + 2 \times x_3 = 12$$

Si cambiamos el orden de las ecuaciones: 

(2)

$$  x_1 -   x_2 + 2 \times x_3 =  5$$
$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$2 \times x_1 + 2 \times x_2 + 2 \times x_3 = 12$$

la solución del nuevo sistema (2) es idéntico a la del sistema (1) e idéntica a la de los sistemas (3) y (4) que se escriben a continuación: 

(3) 

$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$2 \times x_1 - 2 \times x_2 + 4 \times x_3 =  10$$
$$2 \times x_1 + 2 \times x_2 + 2 \times x_3 = 12$$

cuya segunda ecuación es la segunda de (1), pero multiplicados todos sus términos por dos. 

(4)

$$4 \times x_1 + 5 \times x_2 - 3 \times x_3 =  5$$
$$  x_1 -   x_2 + 2 \times x_3 =  5$$
$$4 \times x_1                + 8 \times x_3 = 12$$

cuya tercera ecuación es igual a la tercera ecuación de (1), sumándole dos veces la segunda. 

(1), (2), (3) y (4) son diferentes formas de un mismo sistema de ecuaciones. La solución para $x_1$, $x_2$ y $x_3$ se puede calcular indistintamente a partir de cualquiera de ellos. 

En notación matricial, la transformación de (1) en (2), (3) ó (4) se escribe de la siguiente forma: 

$$\mathbf{L} \mathbf{A} \mathbf{b} = \mathbf{L} \mathbf{y}$$

donde $\mathbf{L}$ es un operador elemental, o un producto de operadores elementales ($\mathbf{L} = \mathbf{L_1} \times \mathbf{L_2} \times \mathbf{L_3} \times ...... \times \mathbf{L_n}$).

Resolviendo el sistema de ecuaciones (ver [Inversa del producto de dos matrices cuadradas][]):

$$ 
\mathbf{b}=(\mathbf{L} \mathbf{A})^{-1} \mathbf{L} \mathbf{y}$$
$$= \mathbf{A^{-1}} \mathbf{L^{-1}} \mathbf{L} \mathbf{y}$$             
$$= \mathbf{A^{-1}} \mathbf{I} \mathbf{y} = \mathbf{A^{-1}} \mathbf{y}$$

Es decir, la solución para el sistema transformado es idéntica a la solución para el sistema original, con la única condición de que $\mathbf{L}$ tenga inversa.

Será interesante llevar a cabo una transformación de este tipo, cuando la matriz equivalente ($\mathbf{L}\mathbf{A}$) sea más fácil de invertir que la matriz $\mathbf{A}$. 

Las matrices más fáciles de invertir son las matrices diagonales. Si se transforma la matrix $\mathbf{A}$ por medio de operadores elementales $\mathbf{L}$ y $\mathbf{M}$ en una matriz diagonal: $\mathbf{L} \mathbf{A} \mathbf{M} = \mathbf{D}$ (diagonal), teniendo $\mathbf{L}$ y $\mathbf{M}$ inversa, el sistema de ecuaciones queda de la siguiente forma: 

$$\mathbf{A} \mathbf{b} = \mathbf{y}$$ 
$$\mathbf{A} \mathbf{I} \mathbf{b} = \mathbf{y}$$
$$\mathbf{A} \mathbf{M} \mathbf{M^{-1}} \mathbf{b} = \mathbf{y}$$
$$\mathbf{L} \mathbf{A} \mathbf{M} \mathbf{M^{-1}} \mathbf{b} = \mathbf{L} \mathbf{y}$$
$$\mathbf{D} \mathbf{M^{-1}} \mathbf{b} = \mathbf{L} \mathbf{y}$$


y su solución es: 

$$\mathbf{b}=(\mathbf{D} \mathbf{M^{-1}})^{-1} \mathbf{L} \mathbf{y}$$
$$= (\mathbf{M^{-1}})^{-1} \mathbf{D^{-1}} \mathbf{L} \mathbf{y}$$
$$= \mathbf{M} \mathbf{D^{-1}} \mathbf{L} \mathbf{y}$$

donde $\mathbf{D}$ es una matriz diagonal y por lo tanto muy fácil de invertir. 

Esta solución $$\mathbf{b}=\mathbf{M} \mathbf{D^{-1}} \mathbf{L} \mathbf{y} = \mathbf{M} (\mathbf{L} \mathbf{A} \mathbf{M})^{-1} \mathbf{L} \mathbf{y} = \mathbf{M} (\mathbf{M^{-1}} \mathbf{A^{-1}} \mathbf{M^{-1}}) \mathbf{L} \mathbf{y}= \mathbf{A^{-1}} \mathbf{y}$$

es idéntica a la solución del sistema de ecuaciones original, pero se ha calculado de una forma mucho más fácil. 

## Solución de un sistema de ecuaciones con rango incompleto

### Inversa generalizada de una matriz 

Muy a menudo nos encontramos con sistemas de ecuaciones con rango incompleto: 

$$\mathbf{A} \mathbf{b} =  \mathbf{y}$$

 donde 

$$ \left| \mathbf{A} \right| = 0$$

En este caso, $\mathbf{A}$ no tiene inversa. Ya no es posible resolver el sistema.

Un sistema como éste tiene un número infinito de soluciones, que se pueden encontrar por medio de "inversas generalizadas". Una vez hallada una solución, no se puede olvidar que NO ES LA ÚNICA SOLUCIÓN y hay que considerar qué sentido tiene esa solución encontrada. 

Una inversa generalizada, o g-inversa de la matriz $\mathbf{A}$ es otra matriz $\mathbf{G}$ , tal que: 

$$\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{A}$$

A menudo se representa una g-inversa de $\mathbf{A}$ como $\mathbf{A^{-}}$.

Si $\mathbf{A}$ tiene el rango completo, su inversa es tambien un g-inversa de $\mathbf{A}$, ya que cumple que: 

$$\mathbf{A} \mathbf{A^{-1}} \mathbf{A} =\mathbf{I} \mathbf{A}=\mathbf{A}$$

Una matriz puede tener no solamente una, sino muchas (un número infinito) de g-inversas. 

*Observación*: matrices no cuadradas también tienen g-inversas. 

### Cálculo de  g-inversas de una matriz

Sea la matriz cuadrada $\mathbf{A}$, de dimensión $n$ y rango $r$, donde $r < n$. 
Vamos a hallar una g-inversa de $\mathbf{A}$, por dos métodos, uno general y otro simplificado, siendo este último el que realmente se utiliza en la práctica ^[Mencionaremos dos métodos más muy frecuentes: la [g-inversa de Moore-Penrose](https://en.wikipedia.org/wiki/Moore%E2%80%93Penrose_inverse), y un método muy usado en mejora genética animal: la g-inversa obtenida mediante nulificación de pivotes de valor 0 durante la descomposición de Cholesky.]. 

#### Método general: 

Como se ha visto anteriormente, es posible transformar la matriz $\mathbf{A}$, por medio de matrices no singulares $\mathbf{P}$ y $\mathbf{Q}$, en otra que tenga $(n-r)$ filas y columnas ocupadas únicamente por ceros: 



$$\mathbf{B}=\mathbf{P} \mathbf{A} \mathbf{Q} = 
\begin{bmatrix}
\mathbf{C}_{r \times r} & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r} & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix}
$$

donde $\mathbf{C}_{r \times r}$ es una submatriz de dimensión $r \times r$ y rango completo y el resto de las submatrices son matrices nulas. 


Como la matriz $\mathbf{C}$ tiene rango completo, tiene inversa $\mathbf{C^{-1}}$. 
Entonces la matriz: 

$$\mathbf{G}=\mathbf{Q} 
\begin{bmatrix}
\mathbf{C}_{r \times r}^{-1} & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r} & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix}
\mathbf{P}$$

es una g-inversa de $\mathbf{A}$: $\mathbf{G}=\mathbf{A^{-1}}$

En efecto, sea $\mathbf{F}=\mathbf{A} \mathbf{G} \mathbf{A}$, pre y postmultiplicando $\mathbf{F}$ por $\mathbf{P}$ y $\mathbf{Q}$ respectivamente, se obtiene la siguiente expresión (se explicitan las dimensiones de las submatrices, para comprobar que los pasos son correctos): 


$$ 
\begin{aligned}
\mathbf{PFQ} & = \mathbf{PAGAQ} = \mathbf{PAQ} 
\begin{bmatrix}
\mathbf{C}_{r \times r}^{-1} & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r} & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix}
\mathbf{P} \mathbf{A} \mathbf{Q} \\
& =  
\begin{bmatrix}
\mathbf{C}_{r \times r} & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r} & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix}
\begin{bmatrix}
\mathbf{C}_{r \times r}^{-1} & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r} & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix} \mathbf{PAQ} \\
& = 
\begin{bmatrix}
\mathbf{I}_{r \times r} & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r} & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix}
\begin{bmatrix}
\mathbf{C}_{r \times r}^{-1} & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r} & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix}\\
& =
\begin{bmatrix}
\mathbf{C}_{r \times r}^{-1} & \mathbf{0}_{r \times (n-r)} \\
\mathbf{0}_{(n-r) \times r} & \mathbf{0}_{(n-r) \times (n-r)} \\
\end{bmatrix}
= \mathbf{PAQ}   
\end{aligned}
$$

 
En resumen: $\mathbf{PFQ} = \mathbf{PAQ}$ 

$\mathbf{P}$ y $\mathbf{Q}$ son no singulares y por lo tanto tienen inversas $\mathbf{P^{-1}}$ y $\mathbf{Q^{-1}}$. 

Pre y postmultiplicando ambos miembros de la expresión anterior por $\mathbf{P^{-1}}$ y $\mathbf{Q^{-1}}$ respectivamente, se obtiene: 

$$ \mathbf{P^{-1}} \mathbf{P} \mathbf{F} \mathbf{Q} \mathbf{Q^{-1}} = \mathbf{P^{-1}} \mathbf{P} \mathbf{A} \mathbf{Q} \mathbf{Q^{-1}} $$
$$ \mathbf{I} \mathbf{F} \mathbf{I}  = \mathbf{I} \mathbf{A} \mathbf{I} $$
$$ \mathbf{F}  =  \mathbf{A}  $$

y como $\mathbf{F} = \mathbf{A} \mathbf{G} \mathbf{A}$ 

$$\mathbf{A} \mathbf{G} \mathbf{A} = \mathbf{A}$$

y $\mathbf{G}$ es una g-inversa de $\mathbf{A}$. 


Ejemplo: en el siguiente sistema de ecuaciones existe una dependencia entre las ecuaciones: 

$$ x_1 + 2 \times x_2 + 3 \times x_3 =  30 $$
$$2 \times x_1 + 2 \times x_2 +  x_3 =  26$$
$$4 \times x_1 + 6 \times x_2 + 7 \times x_3 = 86$$

La tercera ecuación es igual a la segunda más dos veces la primera. 
En notación matricial: 

$$\mathbf{A}  \mathbf{b}  =  \mathbf{y} = 
\begin{bmatrix}
1 & 2 & 3 \\
2 & 2 & 1 \\
4 & 6 & 7 \\
\end{bmatrix} 
\begin{bmatrix}
x_1 \\
x_2 \\
x_3 \\
\end{bmatrix} = 
\begin{bmatrix}
30 \\
26 \\
86 \\
\end{bmatrix} 
$$


El determinante de $\mathbf{A}$ es cero: 

$\left| \mathbf{A} \right| = 1 \times 2 \times 7 + 2 \times 1 \times 4 + 3 \times 2 \times 6 - 3 \times 2 \times 4 - 2 \times 2 \times 7 - 1 \times 1 \times 6 = 0$ 

Dos de las muchas inversas de $\mathbf{A}$ serán $\mathbf{G_1}$ y $\mathbf{G_2}$. 

a) las matrices $\mathbf{P_1}$ y $\mathbf{Q_1}$ son no singulares:  $\left| \mathbf{P_1} \right| = \left| \mathbf{Q_1} \right| = 1$ 

$$\mathbf{P_1}  =
\begin{bmatrix}
1 & 1/2 & -1/2 \\
0 & 1 & 0 \\
0 & 0 & 1 \\
\end{bmatrix}
$$
;
$$ 
\mathbf{Q_1} = 
\begin{bmatrix}
1 & 0 & 0 \\
-5/4 & 1 & 0 \\
1/2 & -2 & 1 \\
\end{bmatrix}
$$

el producto $\mathbf{P_1} \mathbf{A} \mathbf{Q_1}$ tiene una fila y una columna compuestas exclusivamente por ceros: 

$$ 
\mathbf{P_1} \mathbf{A} \mathbf{Q_1} = 
\begin{bmatrix}
0 & 0 & 0 \\
0 & 0 & 1 \\
0 & -8 & 7 \\
\end{bmatrix}
$$

Eliminando la fila y la columna nulas, se obtiene la submatriz $\mathbf{C_1}$, con rango completo e inversa: 

$$
\mathbf{C_1} = 
\begin{bmatrix}
0 & 1 \\
-8 & 7 \\
\end{bmatrix}
;
\mathbf{C_1^{-1}} =
\begin{bmatrix}
7/8 & -1/8 \\
1 & 0 \\
\end{bmatrix}
$$

Sustituyendo en $\mathbf{P_1} \mathbf{A} \mathbf{Q_1}$ la submatriz $\mathbf{C_1}$ por su inversa $\mathbf{C_1^{-1}}$, se obtiene una nueva matriz $\mathbf{C_1^{-}}$: 

$$
\mathbf{C_1^{-}} =
\begin{bmatrix}
0 & 0 & 0 \\
0 & 7/8 & -1/8 \\
0 & 1 & 0 \\ 
\end{bmatrix}
$$

Entonces una g-inversa de $\mathbf{A}$ es la matriz $\mathbf{G_1}$: 

$$
\mathbf{G_1} =  \mathbf{Q_1} \mathbf{C_1^{-}} \mathbf{P_1} =
\begin{bmatrix}
1 & 0 & 0 \\
-5/4 & 1 & 0 \\
1/2 & -2 & 1 \\
\end{bmatrix}
\begin{bmatrix}
0 & 0 & 0 \\
0 & 7/8 & -1/8 \\
0 & 1 & 0 \\
\end{bmatrix}
\begin{bmatrix}
1 & 1/2 & -1/2 \\
0 & 1 & 0 \\
0 & 0 & 1 \\
\end{bmatrix}
$$

$$
\mathbf{G_1} =  
\begin{bmatrix}
0 & 0 & 0 \\
0 & 7/8 & -1/8 \\
0 & -3/4 & 1/4 \\
\end{bmatrix}
$$

Es fácil comprobar que $\mathbf{G_1}$ es una inversa generalizada de $\mathbf{A}$, llevando a cabo el producto de $\mathbf{A} \mathbf{G_1} \mathbf{A}$, que tiene que ser igual a $\mathbf{A}$. 

b) las matrices $\mathbf{P}_2$ y $\mathbf{Q}_2$ son no singulares: $\left| \mathbf{P_2} \right| = \left| \mathbf{Q_2} \right| = 1$ 

$$
\mathbf{P_2} = 
\begin{bmatrix}
1 & 0 & 0 \\
2 & 1 & -1 \\
-4 & 0 & 1 \\
\end{bmatrix}
;
\mathbf{Q_2} =
\begin{bmatrix}
1 & -4/5 & -3 \\
0 & 1 & 0 \\
0 & -2/5 & 1 \\
\end{bmatrix}
$$

siguiendo el mismo proceso anterior: 

$$
\mathbf{P_2} \mathbf{A} \mathbf{Q_2} = 
\begin{bmatrix}
1 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & -5 \\
\end{bmatrix}
$$


Eliminando la segunda fila y la segunda columna: 

$$
\mathbf{C_2} =
\begin{bmatrix}
1 & 0  \\
0 & -5 \\
\end{bmatrix}
;
\mathbf{C_2^{-1}} =
\begin{bmatrix}
1 & 0  \\
0 & -1/5 \\
\end{bmatrix}
;
\mathbf{C_2^{-}} =
\begin{bmatrix}
1 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & -1/5 \\
\end{bmatrix}
$$


Una g-inversa de $\mathbf{A}$ es entonces $\mathbf{G_2}$: 

$$
\mathbf{G_2} =  \mathbf{Q_2} \mathbf{C_2^{-}} \mathbf{P_2} =
\begin{bmatrix}
-7/5 & 0 & 3/5 \\
0 & 0 & 0 \\
4/5 & 0 & -1/5 \\
\end{bmatrix}
$$

Se puede comprobar fácilmente que $\mathbf{A} \mathbf{G_2} \mathbf{A} = \mathbf{A}$ 

Del mismo modo se pueden encontrar otras g-inversas de $\mathbf{A}$, por ejemplo por medio de las siguientes transformaciones: 

$$
\mathbf{P_3} =
\begin{bmatrix}
1 & 1 & 0 \\
0 & 1 & 0 \\
2 & 1 & -1 \\ 
\end{bmatrix}
;
\mathbf{Q_3} =
\begin{bmatrix}
1 & 0 & 2 \\
0 & 1 & -5/2 \\
0 & 0 & 1 \\
\end{bmatrix}
$$ 

$$
\mathbf{P_4} =
\begin{bmatrix}
1 & 0 & 0 \\
-2 & 1 & 0 \\
-2 & -1 & 1 \\
\end{bmatrix}
;
\mathbf{Q_4} =
\begin{bmatrix}
1 & -2 & 2 \\
0 & 1 & -5/2 \\
0 & 0 & 1 \\
\end{bmatrix}
$$

etc. 



#### Método simplificado

Hay algunas g-inversas de $\mathbf{A}$ que son muy fáciles de hallar. Para ello debemos conocer primeramente el rango de $\mathbf{A}$. Si su dimensión es $n$ y su rango es $r$, se eliminan $(n-r)$ filas y columnas de $\mathbf{A}$, se invierte la matriz resultante y se remplazan en la inversa las filas y columnas eliminadas por ceros. El resultado es una g-inversa de $\mathbf{A}$. 

En el ejemplo anterior existía una dependencia entre ecuaciones y el rango de la matriz $\mathbf{A}$ era 2, mientras que su dimensión era 3. Sustituimos por tanto $(3-2)$ filas y columnas (o sea una fila y una columna cualesquiera) por ceros y obtenemos, por ejemplo la matriz $\mathbf{B}$: 


$\mathbf{B} =
\begin{bmatrix}
1 & 2 & 0 \\
2 & 2 & 0 \\
0 & 0 & 0 \\
\end{bmatrix}
=
\begin{bmatrix}
\mathbf{C_3} & 0 \\
0 & 0  \\
\end{bmatrix}$
donde 
$\mathbf{C_3} = 
\begin{bmatrix}
1 & 2 \\
2 & 2  \\
\end{bmatrix}$

Sea entonces 
$\mathbf{G_3} =
\begin{bmatrix}
\mathbf{C_3^{-1}} & 0 \\
0 & 0  \\
\end{bmatrix}=
\begin{bmatrix}
-1 & 1 & 0 \\
1 & -1/2 & 0  \\
0 & 0 & 0 \\ 
\end{bmatrix}$


La matriz $\mathbf{G_3}$ también es una g-inversa de $\mathbf{A}$, como se puede comprobar llevando a cabo el producto de $\mathbf{A} \mathbf{G_3} \mathbf{A}$.

### Solución de sistemas de ecuaciones con rango incompleto por medio de g-inversas. Funciones estimables. 


Para poder resolver sistemas de ecuaciones con rango incompleto se exige que las ecuaciones sean CONSISTENTES, es decir, que se den las mismas dependencias a ambos lados del signo de igual. 

En nuestro ejemplo, tanto en la matriz  $\mathbf{A}$ como en el vector $\mathbf{y}$, la tercera fila es igual a la segunda fila más dos veces la primera $(86=2 \times 30 + 26)$. Las ecuaciones del sistema son consistentes.

Si $\mathbf{G}$ es una g-inversa de $\mathbf{A}$, se puede probar la consistencia de las ecuaciones llevando a cabo el producto de $\mathbf{A} \mathbf{G} \mathbf{y}$. Si el producto de $\mathbf{A} \mathbf{G} ~\mathbf{y} = \mathbf{y}$, las ecuaciones son consistentes. En caso contrario no lo son. 

Una vez probada la consistencia, se puede calcular una solución para el sistema: 

$$ 
\mathbf{b} = \mathbf{G} ~\mathbf{y}
$$


En el ejemplo: 


$$
\mathbf{b_1} = \mathbf{G_1}~ \mathbf{y}= 
\begin{bmatrix}
0 & 0 & 0 \\
0 & 7/8 & -1/8  \\
0 & -3/4 & 1/4 \\ 
\end{bmatrix}
\begin{bmatrix}
30 \\
26 \\
86 \\
\end{bmatrix}
=
\begin{bmatrix}
0 \\
12 \\
2 \\
\end{bmatrix}
=
\begin{bmatrix}
x_1 \\
x_2 \\
x_3 \\
\end{bmatrix}
$$



$$
\mathbf{b_2} = \mathbf{G_2}~ \mathbf{y}=
\begin{bmatrix}
-7/5 & 0 & 3/5 \\
0 & 0 & 0  \\
4/5 & 0 & -1/5 \\
\end{bmatrix}
\begin{bmatrix}
30 \\
26 \\
86 \\
\end{bmatrix}
=
\begin{bmatrix}
48/5 \\
0 \\
34/5 \\
\end{bmatrix}
=
\begin{bmatrix}
x_1 \\
x_2 \\
x_3 \\
\end{bmatrix}
$$

$$
\mathbf{b_3} = \mathbf{G_3}~ \mathbf{y}=
\begin{bmatrix}
-1 & 1 & 0 \\
1 & -1/2 & 0  \\
0 & 0 & 0 \\
\end{bmatrix}
\begin{bmatrix}
30 \\
26 \\
86 \\
\end{bmatrix}
=
\begin{bmatrix}
-4 \\
17 \\
0 \\
\end{bmatrix}
=
\begin{bmatrix}
x_1 \\
x_2 \\
x_3 \\
\end{bmatrix}
$$



Cada g-inversa ha dado lugar a una solución diferente. La pregunta ahora sería: ¿Cual de las tres es "la buena"?; ¿$x_1$ es igual a 0, 48/5 o -4?. No podemos aceptar ninguno de los tres valores, porque la solución encontrada depende de que g-inversa hayamos usado y hemos podido usar $\mathbf{G_1}$, $\mathbf{G_2}$, $\mathbf{G_3}$, o cualquier otra. Sin embargo hay algunas relaciones entre valores o combinaciones de valores que sí son constantes e independientes de qué g-inversa se haya utilizado. Así podemos comprobar en nuestro ejemplo, que la función $x_1 - 2 x_3$, tiene el mismo valor sea cual sea la solución encontrada para $\mathbf{b}$: 

- $\mathbf{b_1}$ : $x_1 - 2 x_3 = 0 - 2 \times 2 = -4$
- $\mathbf{b_2}$ : $x_1 - 2  x_3 = 48/5 - 2 \times 34/5 = -4$
- $\mathbf{b_3}$ : $x_1 - 2  x_3 = -4 - 2 \times 0 = -4$


Del mismo modo, $x_2 + 5/2 x_3$ da siempre 17: 

- $\mathbf{b_1}$ : $x_2 + 5/2 x_3 = 0 + 5/2 \times 2 = 17$
- $\mathbf{b_2}$ : $x_2 + 5/2 x_3 = 0 + 5/2 \times 34/5 = 17$
- $\mathbf{b_3}$ : $x_2 + 5/2 x_3 = 17 + 5/2 \times 0 = 17$

Estas combinaciones (FUNCIONES) de $x_1$, $x_2$ y $x_3$ toman el mismo valor con las tres soluciones y también con cualquier otra de las muchas soluciones posibles. Cuales son estas funciones depende únicamente de la estructura del sistema de ecuaciones y no del modo de resolverlo y se denominan FUNCIONES ESTIMABLES. 

La tarea de quien se encuentra ante la resolución de un sistema de ecuaciones con rango incompleto es encontrar FUNCIONES ESTIMABLES QUE TENGAN UN SENTIDO.
 
Con la valoración genética de los animales se pretende encontrar aquellos individuos que son los "mejores" dentro de una población. Los animales se clasifican de acuerdo a valores relativos, de modo que el mejor obtiene el valor más alto. Desde este punto de vista, el conocimiento del valor absoluto de los animales no es ineludiblemente necesario. Siempre que las diferencias entre los individuos sean funciones estimables, se podrán utilizar sistemas de ecuaciones con rango incompleto para su evaluación^[En la mayoría de programas utilizados en evaluación, la g-inversa utilizada no es explícita para el utilizador. Sin embargo, las funciones de interés (diferencia entre valores de animales, o, por ejemplo, entre niveles de un efecto fijo) son casi siempre estimables.]. 


Las funciones se representan por medio de un vector $\mathbf{k}'$. Las funciones estimables que hemos visto en el ejemplo serán: 

$$
x_1 - 2 x_3 =
\begin{pmatrix}
1 & 0 & -2
\end{pmatrix} 
\begin{bmatrix}   
x_1 \\
x_2 \\
x_3 \\
\end{bmatrix}
;
\mathbf{k_1'}
= 
\begin{pmatrix}
1 & 0 & -2
\end{pmatrix} 
$$

$$
x_2 + \frac{5}{2} x_3 =
\begin{pmatrix}
1 & 0 & 5/2
\end{pmatrix} 
\begin{bmatrix}
x_1 \\
x_2 \\
x_3 \\
\end{bmatrix}
;
\mathbf{k_2'}
=
(1 ~ 0 ~ 5/2)
$$

Para comprobar si una función es estimable o no, se lleva a cabo el producto $\mathbf{k'} \mathbf{G} \mathbf{A} = \mathbf{k'}$, la función es estimable y en caso contrario no lo es. 

Como ejercicio se puede comprobar que las funciones $\mathbf{k_1'}$ y $\mathbf{k_2'}$ son estimables, y que en cambio no lo son ni la función $(1 ~ 0 ~ 0)$, ni la función $(0 ~ 1 ~ 0)$. Esto último quiere decir que las incógnitas no son estimables. 

## Absorción de ecuaciones

Normalmente el mayor problema que se encuentra es la inversión de la matriz. La dificultad y tiempo necesario para el cálculo de determinantes e inversas depende del tamaño y estructura de la matriz a invertir. 

Con la dimensión de la matriz, aumentan exponencialmente. 

Algunas matrices, como por ejemplo las matrices diagonales, son fáciles de invertir aún en el caso de que su dimensión sea muy grande. 

Un procedimiento para facilitar la inversión de algunas matrices de gran dimensión, es la absorción de ecuaciones. 

Sea el siguiente sistema de ecuaciones a resolver: $\mathbf{A} \mathbf{b} = \mathbf{y}$, y sea su matriz de coeficientes $\mathbf{A}$ tal que tenga una gran dimensión, por ejemplo un millón de filas y columnas, pero una estructura especial, que se puede explicar mostrando $\mathbf{A}$ en forma de matriz particionada: 

$$
\mathbf{A} = 
\begin{bmatrix}
\mathbf{B}_{m \times m} & \mathbf{C}_{m \times n}  \\
\mathbf{D}_{n \times m} & \mathbf{E}_{n \times n}  \\
\end{bmatrix}
$$ 

donde: 

- la submatriz $\mathbf{E}$ es una matriz de dimensión grande, pero muy fácil de invertir, como por ejemplo una matriz diagonal. 
- La submatriz $\mathbf{B}$ tiene una dimensión lo suficientemente pequeña, como para que su inversión no exija más memoria de ordenador de la disponible. 

entonces el sistema de ecuaciones se puede escribir de la siguiente forma: 

$$
\begin{bmatrix}
\mathbf{B}_{m \times m} & \mathbf{C}_{m \times n}  \\
\mathbf{D}_{n \times m} & \mathbf{E}_{n \times n}  \\
\end{bmatrix}
\begin{bmatrix}
\mathbf{c}_{m \times 1}  \\
\mathbf{d}_{n \times 1}  \\
\end{bmatrix}
= 
\begin{bmatrix}
\mathbf{w}_{m \times 1}  \\
\mathbf{z}_{n \times 1}  \\
\end{bmatrix}
$$ 

donde 

$$
\begin{bmatrix}
\mathbf{c}_{m \times 1}  \\
\mathbf{d}_{n \times 1}  \\
\end{bmatrix}
=
\mathbf{b}
;
\begin{bmatrix}
\mathbf{w}_{m \times 1}  \\
\mathbf{z}_{n \times 1}  \\
\end{bmatrix}
= 
\mathbf{y}
$$



Multiplicando las matrices queda: 

(1)
$$\mathbf{B}_{m \times m} ~ \mathbf{c}_{m \times 1} + \mathbf{C}_{m \times n} ~ \mathbf{d}_{n \times 1} = \mathbf{w}_{m \times 1}$$ 

(2)
$$\mathbf{D}_{n \times m} ~ \mathbf{c}_{m \times 1} + \mathbf{E}_{n \times n} ~ \mathbf{d}_{n \times 1} = \mathbf{z}_{n \times 1}$$


Se muestran las dimensiones de las submatrices, para comprobar que coinciden. 

Si suponemos que $\mathbf{E}$ es fácil de invertir, se puede despejar $\mathbf{d}$ en la ecuacíón (2): 

$$\mathbf{Ed} = \mathbf{z} - \mathbf{Dc}$$

$$\mathbf{d} = \mathbf{E}^{-1} (\mathbf{z} - \mathbf{Dc})$$

y sustituirlo en la ecuación (1): 

$$\mathbf{B} ~ \mathbf{c} +  \mathbf{C} ~ \mathbf{E^{-1}} ~ (\mathbf{z} - \mathbf{D} ~ \mathbf{c}) = \mathbf{w} $$

$$(\mathbf{B} -  \mathbf{C} ~ \mathbf{E^{-1}} ~ \mathbf{D}) ~ \mathbf{C} = \mathbf{w} -  \mathbf{C} \mathbf{E^{-1}} ~ \mathbf{z} $$

y la solución para $\mathbf{C}$ es: 

$$\mathbf{c} = ( \mathbf{B} - \mathbf{C} ~ \mathbf{E^{-1}} ~ \mathbf{D})^{-1} ~ (\mathbf{w} - \mathbf{c} ~  \mathbf{E^{-1}} ~ \mathbf{z}) $$

donde la matriz $( \mathbf{B} - \mathbf{C} ~ \mathbf{E^{-1}} ~ \mathbf{D})$ tiene dimensión que hace posible llevar a cabo su inversión. 

A partir de $\mathbf{c}$ se puede calcular también $\mathbf{d} = \mathbf{E^{-1}} (\mathbf{z} - \mathbf{D} ~ \mathbf{c})$. 

Este procedimiento suele exigir bastante tiempo de cálculo, pero hace posible la inversión de la matriz. 


 

 

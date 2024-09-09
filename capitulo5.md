# Ejemplo de utilización práctica de un modelo lineal

Como ejemplo para facilitar la comprensión de la teoría de los modelos
lineales, se va a calcular BLUP de los valores de cría para el rendimiento en
cantidad de leche, de una población de diez vacas que parieron por primera
vez en el mismo año y estación y gue han acabado recientemente su primera
lactación.

## Datos

Los datos recogidos de la población son los siguientes:

Vaca Raza Padre Edad al primer parto Rebaño kg de leche
---- ---- ----- -------------------- ------ -----------
6    1    1     20                   1      6251.1
7    1    2     40                   1      6173.5
8    1    3     30                   2      5775.0
9    1    2     26                   2      5775.6
10   1    3     38                   3      5973.8
11   1    1     24                   3      6050.9
12   2    4     26                   4      4150.6 
13   2    5     32                   4      4249.7
14   2    5     36                   5      3849.1
15   2    4     38                   5      3750.3

Media de la edad al primer parto: 30 


## Factores de influencia

El modelo considera los siguientes factores de influencia:

### Influencia genética sobre el rendimiento de una vaca

Se puede descomponer en:

  - Media de la población ($\mu$)la media de la población
corresponde al efecto "vaca", es decir la esperanza
matemática del rendimiento de una
vaca, sin consideración de
otros factores de influencia.

El valor de $\mu$ responde a la pregunta de cuántos kg de leche dará una
vaca de la que no se conoce absolutamente nada. Esta pregunta no tiene
ningún sentido especial para la mejora genética. Si lo tendría si quisiéramos
comparar especies: qué animal da más leche, una hembra de ratón, una vaca o una elefanta.

  - Raza (R): la raza de la vaca es un factor de influencia,
cuyos efectos fijos se clasifican
en dos niveles o clases:
    - Efecto R1 para una vaca de raza 1
    - Efecto R2 para una vaca de raza 2

R1 es la desviación sobre $\mu$ (esperanza matemática de la producción de una
vaca), de la esperanza matemática de la producción de una vaca de la raza 1. R1 es la contestación a la pregunta de cuánta leche más (o menos) esperamos que dé una vaca de la que solo sabemos que es de la raza 1, que otra vaca de la que no sabemos absolutamente nada.
Por medio de los efectos RI y R2 intentamos comparar las razas.

  — Nivel genético de la k-ésima vaca, cuyos padre y madre son los dos de una misma raza.

Este efecto le corresponde únicamente a la k-ésima vaca, que ya es un
individuo particular. Este efecto es la contestación a la pregunta de cuánto
mejor o peor es la k-ésima vaca que la "vaca indeterminada" de su raza.
Es un efecto al azar (ver 5.6). La vaca proviene de un espermatozoide de su
padre  y de un óvulo de su madre , y ambos gametos contenían solamente una parte de los genes de los padres.

### Factores de influencia ambientales

En este caso tenemos:

  — Edad al primer parto (EPP)

Es sabido que una vaca que pare por primera vez a una edad relativamente
temprana, produce en su primera lactación menos leche de la que hubiera
producido en caso de que su edad al primer parto hubiera sido más alta,
manteniéndose todos los demás factores de influencia iguales.
La edad es una variable cuantitativa continua. Se puede considerar como una
covariable y explicar su efecto por medio de una ecuación de regresión. Es
decir, el efecto de la edad a] primer parto es:

$$Efecto-EPP = b (EPP_k - \bar{EPP})$$

donde ^[técnicamente sustraer $\bar{EPP}$ no es necesario] 

  - $EPP_k$ : es la edad a la que parió por prime ra vez la
k-ésima vaca
  - $\bar{EPP}$ es la edad media de las vacas al primer parto  
 
  — Rebaño 
  
Ya se habló en el apartado 5.6 del efecto explotación, de modo que ya no se
insistirá más aquí sobre él. Para no confundirlo con el efecto "raz#', se
representarán los efectos rebaño, como $H_i$.
A la vista de la estructura de los datos se puede observar que en cada
rebaño hay únicamente una raza. Un efecto distribuido de este modo dentro
de los niveles o clases de otro efecto, recibe la denominación de efecto
"nested" ,
jerarquizado (en inglés
literalmente "anidado") . Hay una
estructura jerárquica, de modo gue la clase "raza 1" del factor de influencia
de rango jerárquico superior, engloba a todos los animales de las clases 1, 3
y 3 del factor subordinado, que es el rebaño. Todo los animales de los
rebaños 1, 2 y 3 pertenecen a la raza 1; del mismo modo, todos los animales
de los rebaños 4 y 5 pertenecen a la raza 2. Esto tiene una influencia sobre
el rango de la matriz de coeficientes de las ecuaciones del modelo mixto
(MME) y sobre la estimabilidad de las distintas funciones de parámetros.

Estos cinco factores descritos no son todos los que normalmente se
consideran en la realidad. Se trata solamente de un ejemplo, que ilustre
sobre la estructura de la matriz de coeficientes de las MME.


### Modelo

A la vista de los factores de influencia descritos más arriba, el modelo se
escribe de la siguiente forma:

$y_ijk = \mu + b(EPP_k - \bar{EPP}) + R_i + H_{i(j)} + e_ijk$

donde:

- $y_ijk$ : rendimiento observado en la k-ésima vaca, que se encuentra en el j-ésimo rebaño,
donde las vacas son de la i-ésima raza
- $\mu$: media de la población
- $b$ : coeficiente de regresión
- $EPP_k$ : edad al primer parto de la k-ésima vaca
- $\bar{EPP}$: edad al primer parto media de las  vacas
- $R_i$ : efecto fijo de la i_ésima raza
- $H_{i(j)}$ : efecto fijo del j-ésimo rebaño, subordinado a la
i-ésima raza
- $u_k$ resto del valor aditivo de la k-ésima vaca, o efecto al
azar de la propia vaca
- $e_ijk$ : residuo de la  observación de la k-ésima vaca

En notación matricial el modelo queda:

$$\mathbf{y = X}\boldsymbol{\beta} + \mathbf{Zu + e}$$

donde :

- $\mathbf{y}$: vector de las observaciones
- $\mathbf{X}$: matriz de incidencia de los efectos fijos
- $\boldsymbol{\beta}$: vector de los efectos fijos
- $\mathbf{Z}$: matriz de incidencia de los efectos aleatorios
- $\mathbf{u}$: vector de los efectos aleatorios
- $\mathbf{y}$: vector de los residuos

El conjunto de las ecuaciones del modelo en notación matricial se presentó previamente y es: 

$$
\begin{pmatrix}
\mathbf{X' R^{-1} X} & \mathbf{X' R^{-1} Z}   \\
\mathbf{Z' R^{-1} X} & \mathbf{Z' R^{-1} Z} + \mathbf{G}^{-1}
\end{pmatrix}
\begin{pmatrix}
\hat{\boldsymbol{\beta}} \\
\hat{\mathbf{w}}
\end{pmatrix} =
\begin{pmatrix}
\mathbf{X' R^{-1} y} \\
\mathbf{Z' R^{-1} y}
\end{pmatrix}
$$

### Asunciones del modelo

- La varianza del residuo es igual para todas las vacas y los residuos son independientes (no correlacionados)

$$\mathbf{R}=\mathbf{I}\sigma^2_e$$

$$\mathbf{R}^{-1}=\mathbf{I}\frac{1}{\sigma^2_e}$$

Se asume la varianza residual de $\sigma^2_e=900000$

- No hay correlación entre los efectos 
genéticos aleatorios y residuos: $Cov(u,e)=0$

- El único parentesco entre los animales es conocido a
los partir de los
datos. Se asumen padres desconocidos para los padres y como las madres de las vacas se ignoran, asumimos un pedigree con esta forma:

animal padre madre
------ ----- -----
1      0      0
2      0      0
3      0      0
4      0      0
5      0      0
6      1      0
7      2      0
8      3      0
9      2      0
10     3      0
11     1      0
12     4      0
13     5      0
14     5      0
15     4      0

- La varianza aditiva de la
población, $\sigma^2_u$,  permanece constante de una
generación a otra. La matriz de covarianza entre valores aditivos es, entonces,

$$\mathbf{G} =\mathbf{A}\sigma^2_u$$ 

donde $\mathbf{A}$ es la matriz de relaciones aditivas ("numerator relationship matrix"). Por tanto

$$\mathbf{G}^{-1} =\mathbf{A}^{-1}\frac{1}{\sigma^2_u}$$ 

Asumimos $\sigma^2_u=300000$, lo que corresponde a una heredabilidad $h^2=\frac{\sigma^2_u}{\sigma^2_u+\sigma^2_e}=\frac{300000}{300000+900000}=0.25$.

Dado que $\mathbf{R}^{-1}=\mathbf{I}\frac{1}{\sigma^2_e}$ y $\mathbf{G}^{-1} =\mathbf{A}^{-1}\frac{1}{\sigma^2_u}$, las ecuaciones del modelo mixto se pueden expresar *en este caso* como 

$$
\begin{pmatrix}
\mathbf{X'X}/\sigma^2_e & \mathbf{X'Z}/\sigma^2_e   \\
\mathbf{Z'X}/\sigma^2_e & \mathbf{Z'Z}/\sigma^2_e + \mathbf{A}^{-1}/\sigma^2_u
\end{pmatrix}
\begin{pmatrix}
\hat{\boldsymbol{\beta}} \\
\hat{\mathbf{w}}
\end{pmatrix} =
\begin{pmatrix}
\mathbf{X'y}/\sigma^2_e \\
\mathbf{Z'y}/\sigma^2_e
\end{pmatrix}
$$

Las matriz de las MME se muestra en el gráfico que sigue. Para que sea
más fácil de ver, se han sustituido los ceros por puntos. 



![](sparsity.pdf)

La matriz de coeficientes de las MME es una matriz cuadrada simétrica. Su dimensión es igual al número de parámetros a estimar, es decir:

- $\mu$: 1
- coeficiente de regresión para EPP: 1
- efectos raza: 2
- efectos rebaño: 5
- efectos animales (padres y vacas): 15

Para un total de 24. 

Por ejemplo, las 9 primeras  líneas y columnas reflejan los efectos fijos y sus cruces con el efecto vaca (terminos $\mathbf{X'X}/\sigma^2_e, \mathbf{X'Z}/\sigma^2_e, mathbf{Z'X}/\sigma^2_e$). Las lineas y columnas 10 a 24 corresponden a las ecuaciones de los animales $\mathbf{Z'Z}/\sigma^2_e + \mathbf{A}^{-1}\sigma^2_u$. Se puede observar que las lineas y columnas 10 a 14 casi no tienen elementos, y es porque corresponden a los padres, que no tienen dato de producción y entran en las ecuaciones por relaciones de parentesco.

La primera fila de la inversa
de la matriz, multiplicada por el vector $\begin{pmatrix}
\mathbf{X'y}/\sigma^2_e \\
\mathbf{Z'y}/\sigma^2_e
\end{pmatrix}$
da la solución para $\mu$. La segunda fila es la que se utiliza para obtener el
coeficiente de regresión. Las filas tercera y cuarta toman parte en el
cálculo de los estimadores de los efectos de las razas 1 y 2 respectivamente
etc.

Esta matriz de coeficientes no tiene rango completo. Se puede comprobar que
existen las siguientes dependencias:

1. La suma de las filas de R1 y R2 es igual a la fila de $\mu$
2. La suma de las filas de los rebaños 1, 2 y 3 es igual a la
fila de la raza 1, en la que están jerarquizados esos
rebaños.
3. La suma de las filas de los rebaños 4 y 5 es igual a la
fila de la raza 2, en la que están jerarquizados esos rebaños.

Además y como consecuencia, la suma de todas las filas correspondientes a
los rebaños es igual a la suma de las filas correspondientes a las razas e
igual a la fila de $\mu$.

Cuando se consideran en el modelo varios factores de influencia con efectos
principales clasificatorios (no covariables) fijos, la suma de las filas de todos los efectos de
un factor de influencia es igual a la fila de la media. Si en el modelo se
considera una media y un número $m$ de tales factores de inhfluencia, habrá
un número $m$ de dependencias en la matriz de coeficientes. Si no se incluye
la media, el número de dependencias será como mínimo de $m—1$. 

Si es un modelo jerárquico, donde los efectos del j-ésimo factor de influencia
están subordinados en los efectos del i-ésimo factor de influencia, entonces
para el j-ésimo factor,
en vez de una, aparecerán en la matriz de
coeficientes tantas dependencias como clases tiene el i-ésimo factor. Así en el
ejemplo, para el factor rebaño, subordinado en el factor raza, en vez de una
aparecen dos dependencias, una para cada raza.
Las covariables normalmente no dan lugar a ninguna dependencia en la matriz, pero existen covariables anidadas ("nested"), por ejemplo si el efecto de EPP dependiera de la raza. En ese caso sí que se generan dependencias.

En modelos complejos, el número de dependencias puede ser mayor y no siempre es posible determinarlo *a priori*.

En cambio, las dependencias que podrían aparecer para las filas de los efectos al azar
se destruyen al añadir $\mathbf{G}^{-1}$.

Como las ecuaciones normales del modelo mixto no tienen rango completo, se
pueden resolver mediante g—inversas. Para ello se borran tantas filas y sus
correspondientes columnas como dependencias hay en la matriz (ver 4.4.2,
procedimiento simplificado). La matriz resultante es la matriz **C** de 4.4.2 y
su dimensión es igual al rango de la matriz de coeficientes.
El número de ecuaciones que restan para cada factor ha de ser igual al
número de grados de libertad de ese factor. En nuestro ejemplo:

- $\mu$: 1
- coeficiente de regresión para EPP : 1
- efectos raza: 2-1=1
- efectos rebaño dentro de raza 1: 3-1=2
- efectos rebaño dentro de raza 2: 2-1=1
- efectos animal: 15

Otra posibilidad de encontrar soluciones para las MME, es introducir
restricciones en el sistema de ecuaciones (ver 4.2.2).

Para hacer evidente la influencia del método de solución sobre la solución
misma, se ha hecho con las 12 siguientes g—inversas o restricciones:

1—9: se borraron
las filas y columnas correspondientes los siguientes tres
efectos cada vez:

1. $\mu$, H1 y H4
2. $\mu$, H3 y H5
3. $\mu$, H2 y H4
4. R1, H1 y H4
5. R1, H3 y H5
6. R1, H2 y H4
7. R2, H1 y H4
8. R2, H3 y H5
9. R2, H2 y H4
 
10-12: se introdujeron las siguientes restricciones:
 
10: 

- 1/2 R1 + 1/2 R2 = 0
- 1/3 H1 + 1/3 H2 + 1/3 H3 = 0    
- 1.2 H4 + 1.2 H5 = 0

11: 

- 1/2 R1 + 1/2 R2 = 0
- 1/3 H1 + 1/3 H2 - 1/3 H3 = 0    
- 1.2 H4 + 1.2 H5 = 0

12: 

- 1/2 R1 + 1/2 R2 = 0
- 0.3 H1 + 0.3 H2 + 0.4 H3 = 0    
- 1.2 H4 + 1.2 H5 = 0

Por ultimo tenemos los casos

13: 

- solucion mediante el método iterativo de gradientes conjugados precondicionados (PCG)

14: 

- solucion mediante la funcion "Matrix Division" o "left-division" de Julia.

Las soluciones y distintas funciones de las soluciones para cada uno de los 11 casos se muestran en los cuadros 6 a 9.
De las tablas siguientes se pueden sacar las siguientes consecuencias:

Tablas 6 y 7: las soluciones para los efectos fijos NO SON ESTIMABLES:
dependen de qué g—inversa o grupo de restricciones se haya utilizado.

Las soluciones para los coeficientes de regresión (Tabla 6) y para los
efectos al azar (Tablas 8 y 9) SI SON ESTIMABLES.


$\mu$     $b$   Raza1      Raza2    
------- ------ --------- --------- 
    0.0  -3.42   6208.64   4193.32  
    0.0  -3.42   6012.01   3820.2   
    0.0  -3.42   5765.64   4193.32  
6208.64  -3.42      0.0   -2015.32  
6012.01  -3.42      0.0   -2191.82  
5765.64  -3.42      0.0   -1572.32  
4193.32  -3.42   2015.32      0.0   
4193.32  -3.42   2015.32      0.0   
4193.32  -3.42   1572.32      0.0   
5001.09  -3.42    994.34   -994.34  
4984.51  -3.42    977.75   -977.75  
5001.92  -3.42    995.17   -995.17  
1733.32  -3.42   2131.05   1136.72  
17369.7  -3.42  48034.3    -642.0   

Table: Soluciones para los efectos fijos media, edad al parto y raza con las 14 restricciones

     H1     H2       H3            H4       H5  
--------- ---------- ---------- ---------- ------------
     0.0     -443.0     -196.63       0.0     -373.12
   196.63    -246.37       0.0      373.12       0.0 
   443.0        0.0      246.37       0.0     -373.12
     0.0     -443.0     -196.63       0.0     -373.12
   196.63    -246.37       0.0      373.12       0.0 
   443.0        0.0      246.37       0.0     -373.12
     0.0     -443.0     -196.63       0.0     -373.12
     0.0     -443.0     -196.63       0.0     -373.12
   443.0        0.0      246.37       0.0     -373.12
   213.21    -229.79      16.58     186.56    -186.56
   246.37    -196.63      49.75     186.56    -186.56
   211.55    -231.45      14.92     186.56    -186.56
  2344.26    1901.26    2147.64    1323.28     950.16
-59195.4   -59638.4   -59392.0   -12534.4   -12907.5 

Table: Soluciones para los efectos fijos rebaño con las 14 restricciones

p1    p2     p3     p4      p5    
---- ------ ------ ------- ------ 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 
2.34  -1.35  -0.98  -12.44  12.44 

Table: soluciones para los padres (p1...p5) con las 14 restricciones

v6    v7      v8     v9    v10   v11     v12    v13    v14     v15
----- ------ ---- ------ ------ ----- ------- ------ ------ -------
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17
1.91  -1.42  0.8  -1.96  -3.25  3.93  -16.94  16.94  14.17  -14.17

Table: soluciones para las vacas (v6...v15) con las 14 restricciones


Tabla 10: las diferencias entre los efectos rebaño dentro de una raza SI
SON ESTIMABLES: se pueden comparar rebaños dentro de razas. Sin
embargo, las diferencias entre los efectos de dos rebaños que no tienen la
misma raza NO SON ESTIMABLES. Para un factor jerarquizado dentro de
Otro, solo se pueden comparar los efectos que están jerarquizdos dentro de
una misma clase del factor superior.

H1-H2   H1-H3 H1-H4      H4-H5
----- ------- ---------- -------
443.0  196.63       0.0   373.12
443.0  196.63    -176.5   373.12
443.0  196.63     443.0   373.12
443.0  196.63       0.0   373.12
443.0  196.63    -176.5   373.12
443.0  196.63     443.0   373.12
443.0  196.63       0.0   373.12
443.0  196.63       0.0   373.12
443.0  196.63     443.0   373.12
443.0  196.63      26.65  373.12
443.0  196.63      59.81  373.12
443.0  196.63      24.99  373.12
443.0  196.63    1020.98  373.12
443.0  196.63  -46661.0   373.12

Table: Contrastes de efecto rebaño

Tabla 11: La diferencia entre las razas, en este caso NO ES ESTIMABLE.
Normalmente, las diferencias entre efectos de un mismo factor si lo son. En
este caso no es así, debido a que dentro de la raza hay otro factor
jerarquizado. por eso no se puede separar exactamente los efectos raza y
rebaño. Sólo las funciones "media+raza+rebaño" son estimables,
pero no lo son las funciones "media+raza"  ni la diferencia "(media+R1)—
(media+R2)". Debido a que los distintos efectos "rebaño" no están distribuidos
sobre todas las razas, la pregunta de "¿qué raza es mejor?" , no se puede
contestar.

----------------------------------------------------------------------
  R1-R2  $\mu$+R1  $\mu$+R2 ($\mu$+R1    ($\mu$+R1+H1)   ($\mu$+R1+H1)
                            -$\mu$+R2)  -($\mu$+R1+H2)  -($\mu$+R2+H4)
------- --------- --------- ----------- --------------- ---------------
2015.32   6208.64   4193.32   2015.32     443.0             2015.32

2191.82   6012.01   3820.2    2191.82     443.0             2015.32

1572.32   5765.64   4193.32   1572.32     443.0             2015.32

2015.32   6208.64   4193.32   2015.32     443.0             2015.32

2191.82   6012.01   3820.2    2191.82     443.0             2015.32

1572.32   5765.64   4193.32   1572.32     443.0             2015.32

2015.32   6208.64   4193.32   2015.32     443.0             2015.32

2015.32   6208.64   4193.32   2015.32     443.0             2015.32

1572.32   5765.64   4193.32   1572.32     443.0             2015.32

1988.67   5995.43   4006.76   1988.67     443.0             2015.32

1955.51   5962.26   4006.76   1955.51     443.0             2015.32

1990.33   5997.09   4006.76   1990.33     443.0             2015.32

 994.34   3864.37   2870.04    994.34     443.0             2015.32

48676.3   65404.0   16727.7   48676.3     443.0             2015.32
-------------------------------------------------------------------------------------------

Table: contrastes implicando media, raza y rebaño

La pregunta "¿cuánta leche da un vaca?" (media de producción de la
especie) , tampoco se puede contestar con nuestro modelo (Tabla 3). La
"media minimo—cuadrática" sólo es estimable cuando no se considera ningún
Otro factor fijo en el modelo.

El valor aditivo de una vaca es igual a la suma de sus efectos genéticos:
raza+efecto propio. Como el efecto raza no es estimable, el valor aditivo
de una vaca, incluyendo el efecto raza, TAMPOCO ES ESTIMABLE. Sin embargo, 
las diferencias entre
los valores aditivos de dos vacas de la misma raza SI SON ESTIMABLES
(Tabla 12): se pueden comparar las vacas unas con otras dentro de una raza
(Y ESTE ES EL OBJETIVO DE LA EVALUACION GENETICA DE LOS
ANIMALES!).

Sin embargo, dada la estructura de nuestros datos, la
comparación entre valores de dos vacas de distinta raza NO ES ESTIMABLE
(Tabla 12). Si algunos rebaños hubieran tenido
vacas de las dos razas (estructura no jerárquica) , los efectos "raza" y
"rebaño" se hubizan podido separar y hubieran sido estimables las
diferencias entre razas y entre valores aditivos de vacas de dos razas
diferentes.

------------------------------------------------------
 R1+vaca6  R1+vaca7 R2+vaca12  R1+vaca6       R1+vaca6
                              -(R2+vaca12) -(R1+vaca7)
--------- --------- --------- ------------ -----------
  6206.73   6210.06   4189.39   2009.48       -0.49

  6010.1    6013.43   3816.27   2185.97        -0.49

  5763.72   5767.06   4189.39   1566.48        -0.49

    -1.91      1.42  -2019.25   2009.48        -0.49

    -1.91      1.42  -2195.75   2185.97        -0.49

    -1.91      1.42  -1576.25   1566.48        -0.49

  2013.41   2016.74     -3.93   2009.48        -0.49

  2013.41   2016.74     -3.93   2009.48        -0.49

  1570.41   1573.74     -3.93   1566.48        -0.49

   992.42    995.76   -998.27   1982.83        -0.49

   975.84    979.17   -981.68   1949.66        -0.49

   993.25    996.59   -999.1    1984.49        -0.49

  2129.14   2132.48   1132.79    988.49        -0.49

 48032.4   48035.7    -645.93  48670.5         -0.49
 ------------------------------------------------------

**Conclusión**: a pesar de las dependencias lineales en las MME se pudo llevar a
cabo una comparación entre animales (vacas y padres) dentro de cada raza .
Sin embargo la comparación entre raza y entre animales dé distinta raza no
fue posible. LAS SOLUCIONES DE LAS MME TIENEN QUE SER
INTERPRETADAS SIEMPRE BAJO LA CONSIDERACION DE SU
ESTIMABILIDAD Y POR LO TANTO DE SU VALIDEZ.


## Apéndice: script Julia para el ejemplo presentado

```julia
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
a_borrar=zeros(9,3)
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
```

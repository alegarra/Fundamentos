---
header-includes:
    - \usepackage{bm}
---

# Modelos lineales en Producción Animal

## Definición de un modelo lineal

Los análisis estadísticos se llevan a cabo para explicar qué causas han dado lugar al valor de una determinada medida (normalmente en nuestro caso, un rendimiento animal): qué factores tienen una influencia sobre la magnitud de la medida y en cuánto se puede cifrar esa influencia.

Esas causas y factores de influencia son:

- el mismo animal. La constitución genética de un animal está condicionada por las de sus antecesores, pero definitivamente determinada por el azar.

- el ambiente en el que se encuentra el animal.

Si conociéramos estos factores de influencia y sus efectos, podríamos predecir el futuro rendimiento de un animal, o dirigir en una dirección determinada el nivel de rendimiento de una población.

Para llevar a cabo un análisis de este tipo se necesita:

1. una población, o una muestra de la población, que nos proporcione los datos.

2. una idea preconcebida de cuáles son los factores que pueden tener una influencia significativa sobre los valores a analizar. Esa idea previa da lugar al "modelo".

Por medio del modelo se intenta describir, cómo se ha llegado a realizar el rendimiento de un animal. Este rendimiento se divide en efectos. Cuando estos efectos simplemente se suman, se ha construido un "modelo lineal":

$${y} = {A + B + C + \cdots}$$

Una explicación de este tipo, sólo puede ser una aproximación. El número de factores de influencia es prácticamente infinito y no se pueden considerar todos en un modelo.

Se quedan sin considerar:

1. factores de influencia cuyo efecto es muy pequeño.

2. factores de influencia para los que es desconocida la relación entre el animal medido y el factor.

Para adecuar el modelo a las posibilidades de cálculo, es necesario hacer una serie de asunciones, que normalmente no se corresponden con la realidad. Estas asunciones pertenecen al modelo y hay que explicitarlas juntamente con la fórmula matemática del mismo. Los efectos del modelo son cantidades que pueden explicar una parte del rendimiento, pero queda otra parte que "no sabemos explicar" (la suma de los efectos de los factores no considerados). Esta parte no explicada se llama "residuo" $(e)$.

La fórmula del modelo completo es:

$${y} = {A + B + C + \cdots + e}$$

Si se estima el rendimiento del animal "$i$" - cuyo rendimiento realizado nos es conocido - por medio de la suma de los efectos de los factores de influencia del modelo que han actuado sobre ese animal, el residuo $e_{i}$ para esa medida es el error que se ha cometido en la estimación. El residuo $e_{i}$ para la medida de "$i$" es la diferencia entre el rendimiento realizado y el rendimiento explicado:

$${e_{i}} = { y_{i} - \hat y_{i} \ } = { y_{i} - A - B - C - \cdots }$$

debido a que no sabemos ABSOLUTAMENTE NADA sobre las causas que han dado lugar a $e_{i}$, debemos hacer una primera ASUNCIÓN general sobre $e_{i}$:

El residuo $e_{i}$ está determinado por el azar y por lo tanto es un suceso independiente cuya esperanza matemática es cero y que pertenece a una población de sucesos independientes con una determinada distribución de frecuencias. Para algunos análisis es necesario aceptar además que dicha distribución es normal:

$${e_{i}} \sim N(0, \sigma_{e}^2) $$

Dicho de otra manera: $e_{i}$ tiene valor determinado, pero no sabemos por qué causas $e_{i}$ ha tomado ese valor. En principio no tenemos ninguna idea de cuánto debe valer $e_{i}$ y su valor podría ser cualquiera ($e_{i}$ es aleatorio). Sin embargo sería muy improbable que el valor de $e_{i}$ sobrepasara ciertos límites. Incluso dentro de ese rango, hay ciertos intervalos de magnitud en los que es más probable que se encuentre el valor de $e_{i}$ que en otros.

Una vez definido el modelo, se pueden calcular valores para los efectos considerados en el mismo, si se dispone de datos registrados en una muestra de la población. Estos valores calculados, son ESTIMACIONES; si hubiéramos tomado otra muestra distinta, habríamos obtenido otros valores distintos. Se dice que una estimación tiene poca precisión, cuando con distintas muestras se obtienen valores muy distintos. En cambio, un procedimiento preciso proporciona resultados parecidos con muestras distintas y sólo muestras muy poco representativas de la población dan lugar a que los valores estimados con ellas se alejen de los demás.

Por lo tanto para llevar a cabo la estimación se necesita:

- una muestra representativa de la población

- un modelo, que se corresponda con la realidad lo más posible (o sea un modelo en el que todos los factores de influencia realmente importantes están considerados).

Vamos a utilizar un ejemplo muy simplificado para llevar a cabo el proceso de construcción de un modelo. Para ello utilizaremos un conjunto de datos extremadamente pequeño, de modo que se pueda seguir sin problemas. Esto tiene el inconveniente de que el análisis parece no tener mucho sentido, pero la intención por ahora es únicamente describir el proceso y no hacer una utilización práctica del mismo.

**Ejemplo:** un criador de caracoles quisiera tener una idea del peso de los animales de su explotación, pero no quiere pesarlos todos uno a uno.

1. Material:

Su población consiste en 4 grupos de caracoles de 1, 2, 3 y 4 meses de edad, respectivamente. A modo de muestra, ha pesado un caracol de cada grupo y quiere clacular parámetros de estimación a partir de estos datos.

Los datos registrados son:

| Animal número  |   Edad (meses)  |  Peso (g) |
|:--------------:|:---------------:|:---------:|
| 1              |  1              | 3.5       |
| 2              |  2              | 4.5       |
| 3              |  3              | 6.5       |
| 4              |  4              | 9.6       |

2. Método:

El peso de un caracol es la suma de su peso al nacimiento y del aumento de peso desde entonces y éste último depende de la edad del animal. Por ello tomaremos como factores de influencia el peso al nacimiento y la edad.

- Efecto del peso al nacimiento: desconocemos los pesos que tuvieron los cuatro caracoles al nacer. Dado que no hay ningún criterio para clasificarlos, como pudieran ser diferencias genéticas entre ellos o distintos ambientes hasta el nacimiento, tenemos que ASUMIR que el efecto "peso al nacimiento" es igual para todos.

- Efecto de la edad: el efecto de la edad es el aumento de peso. Cuanto más viejos son los animales, más pesados son. ASUMIMOS que la relación entre peso y edad es lineal:

$${Aumento\: de\: peso} = {\: b\: \times\: Edad }$$

donde $b$ es una constante igual para todos los animales.

Bajo esas condiciones, el modelo resulta:

$${y_{i}} = { a + b \times x_{i} + e_{i} }$$

donde: \
$y_{i}$: peso de i-ésimo caracol \
$x_{i}$: edad del i-ésimo caracol en el momento de la pesada \
$a$: efecto "peso al nacimiento" \
$b$: coeficiente para el efecto "aumento de peso", que depende de la edad \
$e_{i}$: residuo para el i-ésimo caracol \

Ahora podemos, a partir de los datos de la muestra, estimar valores para los parámetros desconocidos $a$ y $b$. Los valores estimados se representan $\hat a$ y $\hat b$.

Una vez hallados $\hat a$ y $\hat b$, podremos estimar el peso actual del j-ésimo caracol, que tiene una edad $x_{j}$, mediante la expresión:

$${\hat y_{j}} = {\hat a + \hat b \times x_{j} }$$

Este es el valor que utilizaremos como aproximación al peso real del j-ésimo caracol, en la esperanza de que el residuo (que es igual al error que cometemos), sea poco importante.


## Método de los mínimos cuadrados (LSQ)

### Ecuaciones normales con rango completo

Antes del análisis :\
- desconocemos el valor de los parámetros $a$ y $b$\
- conocemos la edad y el peso de los caracoles de la muestra\

Si escribimos la expresión del modelo particularizada para cada uno de los caracoles, obtenemos un sistema de ecuaciones:

Animal número 1: ${3.5} = { a \times 1 + b \times 1 + e_{1} }$\
$~~~~~~~~~~~~~~~~~~~~~$ 2: ${4.5} = { a \times 1 + b \times 2 + e_{2} }$\
$~~~~~~~~~~~~~~~~~~~~~$ 3: ${6.5} = { a \times 1 + b \times 3 + e_{3} }$\
$~~~~~~~~~~~~~~~~~~~~~$ 4: ${9.6} = { a \times 1 + b \times 4 + e_{4} }$\

En notación matricial: $\bm{\mathrm{y}}=\bm{\mathrm X \beta + e}$

$$
\begin{pmatrix}
3.5 \\
4.5 \\
6.5 \\
9.6
\end{pmatrix} =
\begin{pmatrix}
1 & 1 \\
1 & 2 \\
1 & 3 \\
1 & 4
\end{pmatrix}
\begin{pmatrix}
a \\
b
\end{pmatrix} +
\begin{pmatrix}
e_1 \\
e_2 \\
e_3 \\
e_4
\end{pmatrix}
$$

donde: \

- $\bm{\mathrm{y}}$ es el vector de los pesos registrados 
- $\bm{\mathrm{ \beta}}$ es el vector de los parámetros a estimar 
- $\bm{\mathrm{e}}$ es el vector de los residuos

La matriz $\mathbf{ X }$ se llama matriz de incidencia y describe la estructura de la muestra: qué parametros corresponden a cada peso y en qué relación.

El sistema de ecuaciones tiene solo 4 ecuaciones (tantas como registros se obtienen de la muestra), pero 6 incógnitas: los dos parámetros $a$ y $b$ y los cuatro residuos $e_{1}$, $e_{2}$, $e_{3}$ y $e_{4}$. Por lo tanto tiene un rango incompleto y un número infinito de soluciones.

Sin embargo, no todas las incógnitas tienen el mismo sentido. Los parámetros $a$ y $b$ son los valores que queremos encontrar para utilizarlos en la estimación de los pesos de los animales. El valor de cada uno de los residuos en cambio, no tiene una aplicación práctica. Sí sabemos que estos residuos son iguales a los errores que cometemos al hacer la estimación y por lo tanto lo único que nos interesa de ellos es que tengan la menor magnitud posible.

De las muchas soluciones posibles del sistema de ecuaciones, nos interesa únicamente aquélla que haga que el error en conjunto sea mínimo. A esta solución le llamamos la OPTIMA (BEST) solución.

Por medio del "Método de los Mínimos Cuadrados", podemos encontrar esta óptima solución. Este método tiene en cuenta a la par el modelo (el sistema de ecuaciones) y la condición de que el error general sea mínimo. Como el residuo puede tomar valores positivos y negativos, la suma de todos ellos no es un buen parámetro para cuantificar el error en su conjunto. En el método de los mínimos cuadrados, se minimiza la suma de los cuadrados de todos los residuos.

En resumen, el método de los mínimos cuadrados se basa en la toma en consideración de:

1. el modelo y \
2. la condición de que la suma de los cuadrados de los residuos de los registros de muestra sea mínima.\

Donde: 

1. Modelo  $\bm{\mathrm{y}}= \bm{\mathrm{ X \beta + e}}$ 
2. Función a minimizar: ${L} = {\sum \limits_{i} e_{i}^2 } = \mathbf{ e' e}$\

La función $L$ alcanza un mínimo cuando las primeras derivadas parciales de $L$ respecto a los parámetros $a$ y $b$ se igualan a cero:

$$
\begin{pmatrix}
\frac{\partial L}{\partial a} \\[4pt]
\frac{\partial L}{\partial b}
\end{pmatrix} =
\begin{pmatrix}
0 \\[4pt]
0
\end{pmatrix}
$$

La función es :

$$
\begin{aligned}
{L} & = \mathbf{ e' e} = (\mathbf{ y - X} \boldsymbol{\beta} )' (\mathbf{ y - X} \boldsymbol{\beta} ) 
= (\mathbf{ y}' -\boldsymbol{\beta}' \mathbf{X}'  ) (\mathbf{ y - X} \boldsymbol{\beta} ) \\
 & = \mathbf{ y'y - y' X \beta - \beta' X' y - \beta' X' X \beta }
\end{aligned}
$$

y sus derivadas parciales:

$${\frac{\partial L}{\partial a}}= {0 - \mathbf{y'X}\frac{\partial \mathbf{\beta}}{\partial a} - \frac{\partial \mathbf{\beta'}}{\partial a} \mathbf{X'y} + \frac{\partial \mathbf{\beta'}}{\partial a} \mathbf{X'X \beta} + \mathbf{\beta'X'X }\frac{\partial \mathbf{\beta}}{\partial a} }$$ 

$${\frac{\partial L}{\partial b}}= {0 - \mathbf{y'X}\frac{\partial \mathbf{\beta}}{\partial b} - \frac{\partial \mathbf{\beta'}}{\partial b} \mathbf{X'y} + \frac{\partial \mathbf{\beta'}}{\partial b} \mathbf{X'X \beta} + \mathbf{\beta'X'X }\frac{\partial \mathbf{\beta}}{\partial b} }$$ 


donde:

$$\frac{\partial \bm{\beta}'}{\partial a} = \frac{\partial \begin{pmatrix}a & b\end{pmatrix}}{\partial a} = {\begin{pmatrix}1 & 0\end{pmatrix}}$$ 

$$\frac{\partial \bm{\beta'}}{\partial b} = \frac{\partial \begin{pmatrix}a & b\end{pmatrix}}{\partial b} = {\begin{pmatrix}0 & 1\end{pmatrix}}$$ 
 
$$\frac{\partial \bm{\beta'}}{\partial a}\mathbf{X'y} =  {\begin{pmatrix} 1 & 0 \end{pmatrix} \mathbf{X'y}}$$

etc.

Nótese que:

- los sumandos de las dos ecuaciones son matrices de dimensión 1
- algunos sumandos son iguales a la matriz traspuesta de otros sumandos, como por ejemplo :

$$\mathbf{y'X}\frac{\partial \boldsymbol{\beta}}{\partial a} = {\left(\frac{\partial \bm{\beta'}}{\partial a} \mathbf{X'y}\right)'}$$


Dado que la matriz traspuesta de una matriz de dimensión 1, es la misma matriz, se pueden simplificar las expresiones anteriores.

Igualando las derivadas parciales a cero, se obtiene la siguiente expresión:

$$
\begin{pmatrix}
0 \\[4pt]
0
\end{pmatrix} =
\begin{pmatrix}
\frac{\partial L}{\partial a} \\[4pt]
\frac{\partial L}{\partial b}
\end{pmatrix} =
\begin{pmatrix}
-2 \begin{pmatrix}1 & 0\end{pmatrix}\mathbf{X'y} + 2 \begin{pmatrix}1 & 0\end{pmatrix}\mathbf{X'X} \hat{\boldsymbol{\beta}}  \\[4pt]
-2 \begin{pmatrix}0 & 1\end{pmatrix}\mathbf{X'y} + 2 \begin{pmatrix}0 & 1\end{pmatrix}\mathbf{X'X} \hat{\boldsymbol{\beta}}
\end{pmatrix} =
$$

$$
 = -2 \begin{pmatrix}
1 & 0 \\[4pt]
0 & 1
\end{pmatrix}\mathbf{X'y} +
2 \begin{pmatrix}
1 & 0 \\[4pt]
0 & 1
\end{pmatrix}\mathbf{X'X \hat \beta} =
-2\mathbf{X'y} + 2\mathbf{X'X \hat \beta}
$$

Observación: al igualar las derivadas parciales a cero, se ha cumplido la condición de que la suma de los cuadrados sea mínima. Por ello se ha sustituido el vector $\boldsymbol{\beta}$ que contiene a las variables $a$ y $b$ (las infinitas posibles soluciones del sistema), por el vector $\mathbf{\hat \beta}$, que es una sola de esas soluciones, que llamamos la solución óptima. El vector $\mathbf{\hat \beta}$ es el vector de los estimadores de los parámetros: $\hat{\boldsymbol{\beta}}' = \begin{pmatrix} \hat a & \hat b\end{pmatrix}$.

Dividiendo por dos a la izquierda y a la derecha del igual queda:

$$ 0 = - \mathbf{X'y} + \mathbf{X'X \hat \beta}$$

o también

$$\mathbf{X'X \hat \beta} = \mathbf{X'y}$$

Este es un nuevo sistema de ecuaciones. Estas ecuaciones se conocen como "las ecuaciones normales".

Su solución: $$\boxed{\mathbf{ \hat \beta} = \mathbf{(X'X)^{-1} X'y}}$$

es la mejor de todas las soluciones que podemos encontrar para ese modelo con la muestra disponible: la solución para la que la suma de cuadrados de los residuos es mínima.

Los valores $\hat a$ y $\hat b$ son los estimadores LSQ (least-square) de los parámetros $a$ y $b$.

En nuestro ejemplo:

$$
\begin{aligned}
\mathbf{\hat \beta} & =
\begin{pmatrix}
\begin{pmatrix}
1 & 1 & 1 & 1 \\
1 & 2 & 3 & 4
\end{pmatrix} &
\begin{pmatrix}
1 & 1 \\
1 & 2 \\
1 & 3 \\
1 & 4
\end{pmatrix}
\end{pmatrix}^{-1}
\begin{pmatrix}
1 & 1 & 1 & 1 \\
1 & 2 & 3 & 4
\end{pmatrix}
\begin{pmatrix}
3.5 \\
4.5 \\
6.5 \\
9.6
\end{pmatrix}= \\
& \begin{pmatrix}
4 & 10 \\
10 & 30
\end{pmatrix}^{-1}
\begin{pmatrix}
1 & 1 & 1 & 1 \\
1 & 2 & 3 & 4
\end{pmatrix}
\begin{pmatrix}
3.5 \\
4.5 \\
6.5 \\
9.6
\end{pmatrix}= \\
& \frac{1}{20} \begin{pmatrix}
30 & -10 \\
-10 & 4
\end{pmatrix}
\begin{pmatrix}
1 & 1 & 1 & 1 \\
1 & 2 & 3 & 4
\end{pmatrix}
\begin{pmatrix}
3.5 \\
4.5 \\
6.5 \\
9.6
\end{pmatrix}= \\
& \frac{1}{20} \begin{pmatrix}
19.0 \\
40.6
\end{pmatrix}=
\begin{pmatrix}
0.95 \\
2.03
\end{pmatrix}
\end{aligned}
$$

Nuestros estimadores son:
$$ \hat a = 0.95$$
$$ \hat b = 2.03$$

El estimador del peso del j-ésimo caracol que tiene la edad $x_{j}$ es:

$$ \hat y_{j} = 0.95 + 2.03 \times x_{j}$$

Los residuos son las diferencias entre los valores medidos por un lado y la suma de los efectos correspondientes por otro. De los cuatro animales de la muestra conocemos los verdaderos pesos, pero de los efectos sólamente tenemos estimaciones. Por ello, la diferencia entre el valor realizado y el estimado, es una estimación del residuo, aunque no el residuo mismo.

Los estimadores de los residuos de nuestro ejemplo son:

$$\mathbf{\hat e} = \mathbf{ y - \hat y} = \mathbf{ y - X \hat \beta}$$

$$
\mathbf{\hat e}=
\begin{pmatrix}
3.5 \\
4.5 \\
6.5 \\
9.6
\end{pmatrix}-
\begin{pmatrix}
1 & 1 \\
1 & 2 \\
1 & 3 \\
1 & 4
\end{pmatrix}
\begin{pmatrix}
0.95 \\
2.03
\end{pmatrix}=
\begin{pmatrix}
0.52 \\
-0.51 \\
-0.54 \\
0.53
\end{pmatrix}
$$

y la suma de cuadrados de los residuos:

$$
\mathbf{\hat e' \hat e}=
\begin{pmatrix}
0.52 & -0.51 & -0.54 & 0.53
\end{pmatrix}
\begin{pmatrix}
0.52 \\
-0.51 \\
-0.54 \\
0.53
\end{pmatrix}= 1.103
$$

es el valor mínimo de la función $L$. Si se acepta que todos los residuos son variables aleatorias que pertenecen a una distribución de media igual a cero y varianza $\sigma_{e}^2$, el valor 1.103 dividido por el número de observaciones menos
uno es un estimador de $\sigma_{e}^2$.

**Ejercicio:** sustituir en las ecuaciones del modelo las variables $a$ y $b$ por números diferentes y comprobar que $\mathbf{ \hat e' \hat e}$ es en todos los casos mayor que
1.103.


### Ecuaciones normales con rango incompleto. Restricciones en el vector $\mathbf{\beta}$

La matriz de coeficientes de las ecuaciones normales puede tener rango incompleto.

Como se verá más adelante (capítulo 5), $\mathbf{(X'X)}$ tiene rango incompleto cuando en el modelo se contempla más de un factor de influencia principal (con niveles). Normalmente las covariables no dan lugar a dependencias en las ecuaciones normales.

En esos casos, hay dos posibilidades para hallar estimadores para los parámetros:

1. Construir las ecuaciones normales y hallar una solución mediante una inversa generalizada

2. introducir restricciones en el vector $\mathbf{\beta}$

Las restricciones son nuevas ecuaciones, que complementan la falta información suficiente. Sólamente se utilizan para posibilitar el cálculo: las restricciones son arbitrarias y la falta de información persiste.

En estas condiciones, el método de los mínimos cuadrados consiste en encontrar el vector $\mathbf{\beta}$ que minimice $\mathbf{(e'e)}$ bajo las condiciones adicionales o restricciones.

La minimización condicionada de una función se puede llevar a cabo mediante multiplicadores de Lagrange.

Cuando el número de parámetros a estimar es $n$ y el rango de la matriz de coeficientes de las ecuaciones normales es $r$, hay que introducir $(n - r)$ restricciones y $(n - r)$  multiplicadores de Lagrange. Estos multiplicadores forman el vector $\mathbf{g}$.

Por ejemplo, sea un modelo con tres factores de influencia, cuyos efectos son:

- $a$ para el primer factor
- $c_{l}$, $c_{2}$ y $c_{3}$ para el segundo factor
- $d_{l}$ y $d_{2}$ para el tercer factor

y en cuya matriz de coeficientes de las ecuaciones normales hay dos dpendencias lineales: $n - r = 2$.

Se puede introducir para el segundo y tercer factores la restricción de que la suma de los efectos de todos sus niveles sea cero:

$$c_{l} + c_{2} + c_{3} = 0$$
$$d_{l} + d_{2}~~~~~~ = 0$$

En notación matricial: $\mathbf{C'\beta} = \mathbf{f}$

$$
\begin{pmatrix}
0 & 1 & 1 & 1 & 0 & 0 \\
0 & 0 & 0 & 0 & 1 & 1
\end{pmatrix}
\begin{pmatrix}
a \\
c_{l} \\
c_{2} \\
c_{3} \\
d_{l} \\
d_{2}
\end{pmatrix}=
\begin{pmatrix}
0 \\
0
\end{pmatrix}
$$

La minimización de la función $\mathbf{(e'e)}$ bajo la condición de que $\mathbf{C'\beta} = \mathbf{f}$ da lugar a unas nuevas ecuaciones normales:

$$
\begin{pmatrix}
\mathbf{X'X} & \mathbf{C} \\
\mathbf{C'} & \mathbf{0}
\end{pmatrix}
\begin{pmatrix}
\mathbf{\beta} \\
\mathbf{g}
\end{pmatrix}=
\begin{pmatrix}
\mathbf{X'y} \\
\mathbf{f}
\end{pmatrix}
$$

Las antiguas ecuaciones normales se han extendido con las restricciones.

Con distintas matrices de restricciones $\mathbf{C'}$, se encuentran distintas soluciones para $\mathbf{\beta}$, del mismo modo que con distintas inversas generalizadas se encuentran distintas soluciones a un sistema de ecuaciones. El procedimiento de los multiplicadores de Lagrange tiene con respecto a la utilización de inversas generalizadas el inconveniente de que no se puede probar qué funciones de los parámetros son estimables.

En el capítulo 5 se ilustrará este procedimiento por medio de un ejemplo.

## Comparación entre dos modelos. Sesgo.

Un criador de caracoles vecino del anterior decide utilizar el procedimiento desarrollado por éste en su propia granja. Como tiene dos tipos distintos de caracoles, unos amarillos y otros marrones, toma una muestra de doble tamaño.

Los datos son:

| Animal número  |     Tipo     |   Edad (meses)  |  Peso (g) |
|:--------------:|:------------:|:---------------:|:---------:|
| 1              | amarillo     |  1              | 3.1       |
| 2              | marrón       |  1              | 3.9       |
| 3              | amarillo     |  2              | 4.9       |
| 4              | marrón       |  2              | 6.1       |
| 5              | amarillo     |  3              | 7.1       |
| 6              | marrón       |  3              | 8.2       |
| 7              | amarillo     |  4              | 8.9       |
| 8              | marrón       |  4              | 9.8       |

El modelo es:

$$
\begin{pmatrix}
3.1 \\
3.9 \\
4.9 \\
6.1 \\
7.1 \\
8.2 \\
8.9 \\
9.8
\end{pmatrix}=
\begin{pmatrix}
1 & 1 \\
1 & 1 \\
1 & 2 \\
1 & 2 \\
1 & 3 \\
1 & 3 \\
1 & 4 \\
1 & 4
\end{pmatrix}
\begin{pmatrix}
a \\
b
\end{pmatrix}+
\mathbf{e}
$$

La ecuaciones normales son: $\mathbf{X' X \hat \beta} = \mathbf{X' y}$

$$
\begin{pmatrix}
1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 \\
1 & 1 & 2 & 2 & 3 & 3 & 4 & 4
\end{pmatrix}
\begin{pmatrix}
1 & 1 \\
1 & 1 \\
1 & 2 \\
1 & 2 \\
1 & 3 \\
1 & 3 \\
1 & 4 \\
1 & 4
\end{pmatrix}
\begin{pmatrix}
\hat a \\
\hat b
\end{pmatrix}=
\begin{pmatrix}
1 & 1 & 1 & 1 & 1 & 1 & 1 & 1 \\
1 & 1 & 2 & 2 & 3 & 3 & 4 & 4
\end{pmatrix}
\begin{pmatrix}
3.1 \\
3.9 \\
4.9 \\
6.1 \\
7.1 \\
8.2 \\
8.9 \\
9.8
\end{pmatrix}
$$

$$
\begin{pmatrix}
8 & 20 \\
20 & 60
\end{pmatrix}
\begin{pmatrix}
\hat a \\
\hat b
\end{pmatrix}=
\begin{pmatrix}
52.0 \\
147.7
\end{pmatrix}
$$

$$
\begin{pmatrix}
\hat a \\
\hat b
\end{pmatrix}=
1/80
\begin{pmatrix}
60 & -20 \\
-20 & 8
\end{pmatrix}
\begin{pmatrix}
52.0 \\
147.7
\end{pmatrix} =
\begin{pmatrix}
2.075 \\
1.770
\end{pmatrix}
$$

Los pesos de los otros caracoles se estiman mediante la siguiente expresión:

$$\hat y_{j} = 2.075 + 1.77 \times x_{j}$$

donde $x_{j}$ es la edad en meses.

2.075 y 1.77 son los mejores estimadores para los parámetros $a$ y $b$ de ese modelo: los valores con los que $\mathbf{(\hat e'\hat e)}$ es mínimo.

Los estimadores de los residuos son:

$$\mathbf{ \hat e}=
 \mathbf{y - X \hat \beta}=
 \begin{pmatrix}
 3.1 \\
 3.9 \\
 4.9 \\
 6.1 \\
 7.1 \\
 8.2 \\
 8.9 \\
 9.8
 \end{pmatrix} -
 \begin{pmatrix}
 1 & 1 \\
 1 & 1 \\
 1 & 2 \\
 1 & 2 \\
 1 & 3 \\
 1 & 3 \\
 1 & 4 \\
 1 & 4
 \end{pmatrix}
 \begin{pmatrix}
 2.075 \\
 1.770
 \end{pmatrix}=
 \begin{pmatrix}
 -0.745 \\
 0.055\\
 -0.715 \\
 0.485 \\
 -0.285 \\
 0.815 \\
 -0.255 \\
 0.645
 \end{pmatrix}
 $$

y la suma de cuadrados $\mathbf{\hat e' \hat e} = 2.531$

En este modelo no se ha tenido en cuenta que existe una diferencia genética entre caracoles. La suposición de que todos los animales, independientemente de su tipo genético (amarillos o marrones) tienen el mismo peso al nacimiento parece cuestionable. Por eso sugerimos al segundo criador de caracoles que utilice otro modelo, en el cual se consideren dos pesos al nacimiento diferentes. Los factores de influencia y sus efectos serían en este nuevo modelo:

- Factor de influencia peso al nacimiento: la influencia del peso al nacimiento tiene dos niveles o clases:
  - efecto peso al nacimiento de tipo amarillo: $a_{1}$ 
  - efecto peso al nacimiento de tipo marrón:  $a_{2}$ 

- Factor de influencia edad $(x_{i})$: efecto ganancia de peso $b x_{i}$

Seguimos ASUMIENDO que el aumento de peso con la edad es lineal e igual para los dos tipos genéticos.

Las ecuaciones del nuevo modelo son:
$$
\begin{pmatrix}
3.1 \\
3.9 \\
4.9 \\
6.1 \\
7.1 \\
8.2 \\
8.9 \\
9.8
\end{pmatrix} =
\begin{pmatrix}
1 & 0 & 1 \\
0 & 1 & 1 \\
1 & 0 & 2 \\
0 & 1 & 2 \\
1 & 0 & 3 \\
0 & 1 & 3 \\
1 & 0 & 4 \\
0 & 1 & 4
\end{pmatrix}
\begin{pmatrix}
a_{1} \\
a_{2} \\
b
\end{pmatrix}+
\mathbf{e}
$$

Las ecuaciones normales :

$$\mathbf{X'X \hat{\boldsymbol{\beta}}} = \mathbf{X'y}$$

$$
\begin{pmatrix}
4 & 0 & 10 \\
0 & 4 & 10 \\
10 & 10 & 60
\end{pmatrix}
\mathbf{ \hat \beta} =
\begin{pmatrix}
24.0 \\
28.0 \\
147.7
\end{pmatrix}
$$

Los estimadores:
$$
\mathbf{\hat \beta} =
\begin{pmatrix}
\hat a_{1} \\
\hat a_{2} \\
\hat b
\end{pmatrix}=
\mathbf{(X'X)^{-1} X'y}=
\begin{pmatrix}
1.570 \\
2.575 \\
1.770
\end{pmatrix}
$$

Los residuos:
$$
\mathbf{\hat e}=
\mathbf{y - X \hat \beta}=
\begin{pmatrix}
3.1 \\
3.9 \\
4.9 \\
6.1 \\
7.1 \\
8.2 \\
8.9 \\
9.8
\end{pmatrix} -
\begin{pmatrix}
1 & 0 & 1 \\
0 & 1 & 1 \\
1 & 0 & 2 \\
0 & 1 & 2 \\
1 & 0 & 3 \\
0 & 1 & 3 \\
1 & 0 & 4 \\
0 & 1 & 4
\end{pmatrix}
\begin{pmatrix}
1.570 \\
2.575 \\
1.770
\end{pmatrix}=
\begin{pmatrix}
-0.240 \\
-0.685 \\
-0.210 \\
-0.015 \\
0.220 \\
0.315 \\
0.250 \\
0.145
\end{pmatrix}
$$

Y la suma de cuadrados de los residuos: $\mathbf{\hat e' \hat e} = 0.8023$

A partir de una misma muestra hemos encontrado, para dos modelos distintos, los mejores estimadores de los parámetros de cada modelo. En un caso, la suma de los cuadrados de los residuos fue 2.531 y en el otro 0.8023; el segundo modelo ha resultado ser más adecuado que el primero, porque las previsiones que hacemos con él, en general, se ajustan más a la realidad conocida.

Comparemos ahora los estimadores de los residuos de los dos modelos:

| Animal número  |     Tipo     |  Residuo Modelo 1  | Residuo Modelo 2 |
|:--------------:|:------------:|:------------------:|:----------------:|
| 1              | amarillo     |  -0.745            | -0.240    |
| 2              | marrón       |  0.055             | -0.682    |
| 3              | amarillo     |  -0.715            | -0.210    |
| 4              | marrón       |  0.485             | -0.015    |
| 5              | amarillo     |  -0.285            | 0.220     |
| 6              | marrón       |  0.815             | 0.315     |
| 7              | amarillo     |  -0.255            | 0.250     |
| 8              | marrón       |  0.645             | 0.145     |


Se observa que con el primer modelo, todos los caracoles amarillos se han sobreestimado y todos los marrones se han subestimado. Con el primer modelo se comete un ERROR SISTEMATICO.

Esto es lógico si aceptamos que el segundo modelo es mejor. Se ha utilizado como estimador de  todos pesos la única expresión

$$\hat y_{j} = 2.075 + 1.77 \times x_{j}$$

en vez de aplicar:

- para los amarillos  $\hat y_{j} = 1.570 + 1.77 \times x_{j}$  
- y para los marrones $\hat y_{j} = 2.575 + 1.77 \times x_{j}$

donde:

$$1.570 < 2.075 < 2.575$$

Asumiendo que todos los caracoles, independientemente del tipo tienen el mismo peso al nacimiento, se comete un error sistemático en la estimación y los estimadores son SESGADOS.

SI SE DEJA DE CONSIDERAR UN FACTOR DE INFLUENCIA
IMPORTANTE, SE OBTIENEN ESTIMADORES SESGADOS


## Vector de esperanzas matemáticas y matriz de varianzas-covarianzas de un vector de variables aleatorias.

### Definición

El vector de esperanzas matemáticas de un vector de variables aleatorias es el vector de las esperanzas matemáticas de las variables individuales que lo componen.

La matriz de varianzas-covarianzas de un vector de variables aleatorias es una matriz cuadrada, simétrica, de dimensión $n$, igual a la dimensión del vector. En la diagonal de esa matriz se encuentran las varianzas y fuera de la diagonal, las covarianzas entre las distribuciones de las variables del vector.

Sean $r$, $s$, $t$ y $u$ cuatro variables aleatorias con esperanzas matemáticas $E(r)$, $E(s)$, $E(t)$ y $E(u)$, respectivamente y con varianzas $\sigma_{r}^2$, $\sigma_{s}^2$, $\sigma_{t}^2$ y $\sigma_{u}^2$. Sean las covarianzas entre ellas $\sigma_{rs}$, $\sigma_{st}$, $\sigma_{ru}$, etc.

El vector $\mathbf{v}=
\begin{pmatrix}
r \\
s \\
t \\
u
\end{pmatrix}$ es un vector de variables aleatorias.

La esperanza matemática de $\mathbf{v}$ es el vector: $E(\mathbf{v})=
\begin{pmatrix}
E(r) \\
E(s) \\
E(t) \\
E(u)
\end{pmatrix}$

La matriz de varianzas-covarianzas es:
$$Var(\mathbf{v})=
\begin{pmatrix}
\sigma_{r}^2 & \sigma_{rs}  & \sigma_{rt}  & \sigma_{ru}\\
\sigma_{rs}  & \sigma_{s}^2 & \sigma_{st}  & \sigma_{su}\\
\sigma_{rt}  & \sigma_{st}  & \sigma_{t}^2 & \sigma_{tu}\\
 \sigma_{ru} & \sigma_{su}  & \sigma_{tu}  & \sigma_{u}^2
\end{pmatrix}$$

### Matriz de varianzas-covarinzas de un vector con esperanza matemática nula.

Supongamos que las esperanzas matemáticas de todas las variables aleatorias son nulas:

$$
E(\mathbf{v})=
\begin{pmatrix}
E(r) \\
E(s) \\
E(t) \\
E(u)
\end{pmatrix} =
\begin{pmatrix}
0 \\
0 \\
0 \\
0
\end{pmatrix}
$$

La variable $r$ es una variable aleatoria con una determinada distribución de frecuencias y media cero. Hay un número $N$ (infinito) de valores que puede tomar la variable $r$ con mayor o menor probabilidad. La media de todos los casos posibles ponderados por su frecuencia o probabilidad es cero (la esperanza matemática es cero).

La varianza de la distribución de $r$ es la suma de los cuadrados de las desviaciones respecto a la media de todos los casos, dividido por el número de casos:

$$\sigma_{r}^2 = \frac{1}{N}{\sum \limits_{i} (r_{i}-E(r))^2} = \frac{1}{N}{\sum \limits_{i} (r_{i})^2} = E(r^2)$$ \

La varianza de una variable aleatoria de esperanza matemática igual a cero, es igual a la esperanza matemática del cuadrado de la variable.

Del mismo modo, la covarianza entre $r$ y $s$ es:

$$\sigma_{rs} = \frac{1}{N}{\sum \limits_{i} (r_{i}-E(r))(s_{i}-E(s))} = \frac{1}{N}{\sum \limits_{i} r_{i} s_{i}} = E(rs)$$ \

La covarianza entre las variables $r$ y $s$ es igual a la esperanza matemática de la variable $(r\times s)$.

En este caso, la matriz de varianzas y covarianzas del vector $\mathbf{v}$ queda como sigue:

$$
\mathbf{R}=
Var(\mathbf{v})=
\begin{pmatrix}
E(r^2) & E(rs)  & E(rt)  & E(ru) \\
E(rs)  & E(s^2) & E(st)  & E(su) \\
E(rt)  & E(st)  & E(t^2) & E(tu) \\
E(ru)  & E(su)  & E(tu)  & E(u^2)
\end{pmatrix} =
$$

$$
= E \begin{pmatrix}
(r^2) & (rs)  & (rt)  & (ru) \\
(rs)  & (s^2) & (st)  & (su) \\
(rt)  & (st)  & (t^2) & (tu) \\
(ru)  & (su)  & (tu)  & (u^2)
\end{pmatrix} =
E \begin{pmatrix}
r \\
s \\
t \\
u
\end{pmatrix}
\begin{pmatrix}
r & s & t & u
\end{pmatrix} =
E(\mathbf{vv'})
$$

$$\mathbf{R} = E(\mathbf{vv'})$$

$\mathbf{R}$ es igual a la matriz de la esperanza matemática de $\mathbf{v v'}$.

Sea $\mathbf{L}$ un operador elemental, que transforma el vector $\mathbf{v}$ en otro vector de variables aleatorias $\mathbf{w}$: $\mathbf{w} = \mathbf{L v}$

$\mathbf{L}$ es una matriz de constantes; por ello la esperanza matemática del nuevo vector $\mathbf{w}$ es igual al producto de $\mathbf{L}$ por el vector de esperanzas matemáticas de $\mathbf{v}$:

$$E(\mathbf{w}) = E(\mathbf{L v}) = \mathbf{L}E(\mathbf{v}) $$

La matriz de varianzas y covarianzas del nuevo vector es:

$$Var(\mathbf{w}) = Var(\mathbf{L v}) = E((\mathbf{L v})(\mathbf{L v})') = E(\mathbf{L v v' L'})$$

y como $\mathbf{L}$ y $\mathbf{L'}$ son constantes:

$$Var(\mathbf{w}) = \mathbf{L} E(\mathbf{v v'}) \mathbf{L'} = \mathbf{L R L'} = \mathbf{L} Var(\mathbf{v}) \mathbf{L'}$$

## Método de los mínimos cuadrados generalizado (GLS)

En un modelo lineal, el vector $\mathbf{e}$ es un vector de variables aleatorias:

$$
\mathbf{e}=
\begin{pmatrix}
e_{1} \\
e_{2} \\
\cdots \\
\cdots \\
e_{n}
\end{pmatrix}
$$

El residuo $e_{1}$ pertenece a una distribución de media cero y varianza $\sigma_{e_{1}}^2$.

El residuo $e_{2}$ pertenece a una distribución de media cero y varianza $\sigma_{e_{2}}^2$.

El residuo $e_{n}$ pertenece a una distribución de media cero y varianza $\sigma_{e_{n}}^2$.

Dado que no sabemos nada acerca de $e_{1}$, $e_{2}$, etc., no tenemos ningún criterio para juzgar si la varianza de la distribución de la que se ha obtenido $e_{1}$ es mayor o menor que la varianza de la distribución de donde ha salido $e_{2}$. Por eso tenemos que asumir, que la varianza de la distribución es la misma para todos los residuos:

$$\sigma_{e_{1}}^2 = \sigma_{e_{2}}^2 =  \cdots = \sigma_{e_{n}}^2 = \sigma_{e}^2$$

Del mismo modo, no tenemos ninguna razón para pensar que se producen covarianzas entre los residuos. Existe una covarianza entre dos variables, cuando las dos tienen causas comunes. Pero hemos partido de la base de que no sabemos absolutamente nada acerca de las causas de $e_{1}$, $e_{2}$, etc. Por lo tanto, en principio debemos asumir, que todas las covarianzas $\mathbf{R} = Var(\mathbf{e})$ son cero.

Así la esperanza matemática y la matriz de varianzas-covarianzas de los residuos de un modelo LSQ son:

$$
E(\mathbf{e})=
\begin{pmatrix}
E(e_{1}) \\
E(e_{2}) \\
E(e_{3}) \\
\cdots \\
\cdots \\
E(e_{n})
\end{pmatrix} =
\begin{pmatrix}
0 \\
0 \\
0 \\
0 \\
0 \\
0
\end{pmatrix}
$$

$$
\mathbf{R}=
\begin{pmatrix}
\sigma_{e}^2 & 0            & 0            & \cdots     & \cdots & 0  \\
0            & \sigma_{e}^2 & 0            & \cdots     & \cdots & 0  \\
0            & 0            & \sigma_{e}^2 & \cdots     & \cdots & 0   \\
\cdots          & \cdots          & \cdots          & \cdots     & \cdots & \cdots \\
\cdots          & \cdots          & \cdots          & \cdots     & \cdots & \cdots \\
0            & 0            & 0            & \cdots     & \cdots & \sigma_{e}^2
\end{pmatrix} =
\mathbf{I}\sigma_{e}^2
$$

$E(\mathbf{e})$ es un vector nulo y $Var(\mathbf{e})$ es una matriz escalar. Esta es la primera ASUNCIÓN de modelo (ver apdo. 4.1), expresada en notación matricial.

Pero también podría darse el caso de que sí hubiera algún criterio que hiciera esperar, que las varianzas de los residuos fueran de diferente magnitud, o que hay covarianza entre residuos. En este caso, $\mathbf{R}$ ya no seria una matriz escalar.

Ejemplos de ellos podrían ser los siguientes:

**Ejemplo primero:** se pretende valorar datos de crecimiento de terneros, parte de los cuales se han criado en una gran estación de testaje, mientras que el resto han sido controlados individualmente sin salir de sus granjas de origen.

En una estación, las condiciones ambientales están estandarizadas: todos los terneros son tratados y alimentados de la misma manera, de acuerdo con unas normas prefijadas y han permanecido todos en el mismo lugar. En cambio, las condiciones en que se han criado los terneros que permanecen en sus lugares de origen variarán de unas explotaciones a otras, sin que sea normalmente posible recoger información suficiente sobre ellas. En estas condiciones, los factores ambientales desconocidos presentarán más variabilidad entre los animales probados en estación que entre los probados en campo. El efecto de estos factores está contenido en el residuo, de modo que tenemos razones para sospechar, que habrá diferentes varianzas del residuo en los casos de prueba en estación, que en los casos de testaje en campo. En este caso la matriz $\mathbf{R}$ sería:

$$
\mathbf{R}=
\begin{pmatrix}
\sigma_{e_{s}}^2 & 0               & 0               &\cdots     & 0   & 0  \\
0                &\sigma_{e_{s}}^2 & 0               &\cdots     & 0   & 0  \\
0                & 0               &\sigma_{e_{s}}^2 &\cdots     & 0   & 0   \\
\cdots              & \cdots             & \cdots             &\cdots     & \cdots & \cdots \\
0                & 0               & 0               &\cdots     & \sigma_{e_{c}}^2 & 0 \\
0                & 0               & 0               &\cdots     & 0 & \sigma_{e_{c}}^2
\end{pmatrix}
$$

donde $\sigma_{e_{s}}^2$ y $\sigma_{e_{c}}^2$ serían las varianzas de los residuos en estación y en campo, respectivamente.

**Ejemplo segundo:** se pretende valorar con un modelo resultados de lactaciones de vacas. De cada lactación se han recogido varios caracteres a saber, cantidad de leche, cantidad de grasa y cantidad de proteína producida. Así la vaca número 2345678, contribuye al modelo con tres rendimientos (leche, grasa y proteína), para los que se pueden escribir tres ecuaciones:

- $y_{l2345678} = \sum efectos +  e_{l2345678}$
- $y_{g2345678} = \sum efectos +  e_{g2345678}$ 
- $y_{p2345678} = \sum efectos +  e_{p2345678}$ 

Los tres residuos, $e_{l2345678}$, $e_{g345678}$ y $e_{p2345678}$ del vector $\mathbf{e}$ corresponden a caracteres distintos. Las varianzas de los tres no pueden ser iguales.

Además los tres residuos pertenecen a la misma vaca número 2345678. Los tres son variables aleatorias, que tienen causas desconocidas. Estas causas son en gran parte efectos ambientales, que no podemos registrar. Pero como los tres pertenecen a la misma vaca, las condiciones ambientales fueron para los tres las mismas. Las causas de los tres restos son, en parte las mismas, es decir, podemos pensar que habrá covarianza entre los tres residuos.

En este modelo (modelo de caracteres múltiples), la matriz $\mathbf{R}$ no es ni siquiera diagonal.

Podríamos mencionar muchos otros casos, en los que los residuos de las diferentes ecuaciones del modelo no tienen igual importancia, o en los que hay relaciones entre los residuos. En todos estos casos, la función a minimizar para el método de los mínimos cuadrados es otra distinta a $(\mathbf{e'e})$ (ver apdo. 4.2), porque en esta función:

- todos los residuos se consideran de la misma forma, cuando su importancia relativa no es igual y

- las relaciones entre residuos no se tienen en cuenta.

Así se desprecia una parte de información importante. La búsqueda de una nueva función a minimizar que tuviera en cuenta estas nuevas informaciones y el posterior desarrollo de las nuevas ecuaciones normales sería enormemente complicado, si no se dispusiera del conocimiento del álgebra de las matrices, en la que se simplifican los problemas más complicados.

Sea nuestro modelo **(1)**:

$$\mathbf{y} = \mathbf{X \beta} + \mathbf{e}$$

donde $E(\mathbf{e}) = \mathbf{0}$ y $Var(\mathbf{e}) = \mathbf{R}$

Dado que $\mathbf{R}$ no es una matriz escalar, no podemos aplicar el método de los mínimos cuadrados a nuestro modelo. Necesitaríamos otro modelo **(2)**:

$$\mathbf{z} = \mathbf{Q \beta} + \mathbf{f}$$

donde $E(\mathbf{f}) = \mathbf{0}$ y $Var(\mathbf{f}) = \mathbf{S}(escalar)$

en el que los parámetros de $\mathbf{\beta}$ fueran los mismos de nuestro modelo original.
Si dispusiéramos de datos para este segundo modelo, seria posible aplicar el método de los mínimos cuadrados y hacer una estimación de $\mathbf{\beta}$.

Como se vio en el apdo 3.3.4, se puede transformar un sistema de ecuaciones por medio de operaciones elementales, sin que varíe la solución del mismo. Nuestro problema es pues, encontrar una matriz operador elemental, que transforme el sistema de ecuaciones (1) en el sistema de ecuaciones (2), de modo que $E(\mathbf{f})$ sea cero y $\mathbf{S}$ sea una matriz escalar.

Una propiedad de las matrices de varianzas-covarianzas (como por ejemplo $\mathbf{R}$) y que no podemos demostrar dentro de las dimensiones de estos apuntes, es que para ellas existe siempre una única matriz no singular $\mathbf{P}$ tal que:

$$\mathbf{P'P} = \mathbf{R}$$

Se puede probar que la inversa de la matriz $\mathbf{P}$, es la matriz que buscabamos para llevar a cabo la transformación del sistema.

En efecto, si llevamos a cabo la transformación, premultiplicando por  $\mathbf{P^{-1}}$ a ambos lados del signo igual:

$$\mathbf{y} = \mathbf{X \beta} +\mathbf{e}$$
$$\mathbf{P^{-1} y} = \mathbf{P^{-1} X \beta} + \mathbf{P^{-1} e}$$

Si llamamos a las matrices:

$$\mathbf{P^{-1} y} = \mathbf{z}$$
$$\mathbf{P^{-1} X} = \mathbf{Q}$$
$$\mathbf{P^{-1} e} = \mathbf{f}$$

tenemos un nuevo sistema de ecuaciones:

$$\mathbf{z} = \mathbf{Q \beta} + \mathbf{f}$$

La esperanza matemática de $\mathbf{f}$ es: $E(\mathbf{f}) = E(\mathbf{P^{-1} e}) = \mathbf{P^{-1}} E(\mathbf{e}) = \mathbf{0}$

La matriz de varianzas-covarianzas de $\mathbf{f}$ es:

$$Var(\mathbf{f}) = Var(\mathbf{P^{-1} e}) = \mathbf{P^{-1}} Var(\mathbf{e}) (\mathbf{P^{-1}})' = \mathbf{P^{-1}R}(\mathbf{P^{-1}})'$$

La matriz $\mathbf{P}$ es simétrica y su inversa es igualmente simétrica, lo que quiere decir que: $(\mathbf{P^{-1}})' = \mathbf{P^{-1}}$

Entonces: $Var(\mathbf{f}) = \mathbf{P^{-1} R P^{-1}} = \mathbf{P^{-1} P' P P^{-1}} = \mathbf{I}$

La matriz de varianzas-covarianzas del vector de los nuevos residuos es una matriz unidad o identidad y por lo tanto es una matriz escalar, con lo que se cumple lo que exigíamos a la transformación.

Aplicando el método de los mínimos cuadrados en el modelo (2) :

$$\mathbf{Q' Q \hat \beta} = \mathbf{Q' z}$$

donde:

$\mathbf{Q} = \mathbf{P^{-1} X}$; $\mathbf{Q'} = \mathbf{X' P^{-1}}$ ; $\mathbf{z} = \mathbf{P^{-1} X}$ \

$$\mathbf{X' P^{-1}  P^{-1} X \hat \beta} = \mathbf{X' R^{-1} y}$$

$$\boxed{\mathbf{X' R^{-1}  X \hat \beta} = \mathbf{X' R^{-1} y}}$$

Esta última expresión se corresponde con las ecuaciones normales del método de los mínimos cuadrados generalizado (GLS), a aplicar cuando la matriz de varianzas-covarianzas de los residuos no es escalar.


## Efectos fijos y al azar. Un modelo mixto

Además del residuo, otros efectos del modelo pueden ser variables aleatorias.

Pensemos en un modelo para analizar el rendimiento lechero en ganado vacuno. Los factores de influencia sobre la producción de leche de una vaca son su ambiente y su constitución genética.

**Influencia ambiental:**

Un modelo real será mucho más complicado, pero para el ejemplo vamos a considerar, que todos los efectos ambientales se pueden resumir en un solo efecto, que llamaremos "efecto rebaño". Este sería un efecto común a todas las vacas presentes en ese rebaño: como el ambiente es el mismo para todas las vacas del rebaño, todas reciben el mismo efecto.


**Factores genéticos:**

<!---
AL: no me gusta esta explicación y la cambio

Nos limitaremos en el ejemplo al efecto genético del padre de la vaca. Todas las vacas hijas del toro número 7654 reciben de su padre una parte de su genotipo, con el valor v7654 (efecto del padre número 7654). Esa parte de su genotipo se ha transmitido a través de un espermatozoide. A poco que sepamos de la formación de gametos y pensando que la producción de leche es un carácter regulado por un número muy grande de genes de efectos individuales muy pequeños, no podemos en ningún caso aceptar, que todos los gametos producidos por el toro número 7654 son iguales, ni por lo tanto, que tienen el mismo valor. Cada gameto tendrá un valor v7654 distinto de los demás. Si el toro tiene un valor genético alto, la mayoría de los gametos que produzca transmitirán también un alto valor, pero no es imposible, aunque sí improbable, que el valor v7654 de un gameto concreto esté muy alejado de los valores de la mayoría de los gametos.

Resumiendo: el efecto v7654 es una variable aleatoria, que tendrá una determinada distribución de probabilidades, una media y una varianza.
-->

Consideremos un animal. Según la genética de poblaciones ^[Gillespie, John H. Population genetics: a concise guide. JHU Press, 2004.] y la genética cuantitativa ^[Falconer, D. S., & Mackay, T. F. C. (1996). Introduction to quantitative genetics. Longman New York.], en una población de animales que se reproducen (una raza), existe una cierta variabilidad genética aditiva. Un animal que sale de dicha población no puede tener un valor genético "cualquiera", ya que su valor genético estará condicionado por la variabilidad genética de la población. Un animal cuyos padres se conocen tendrá, a su vez, su variabilidad condicionada por el valor genético de sus padres y una cierta desviación llamada muestreo mendeliano, que se explica ahora.  

Por ejemplo, todas las vacas hijas del toro número 7654 reciben de su padre una parte de su genotipo que se ha transmitido a través de un espermatozoide. A poco que sepamos de la formación de gametos y pensando que la producción de leche es un carácter regulado por un número muy grande de genes de efectos individuales muy pequeños, no podemos en ningún caso aceptar, que todos los gametos producidos por el toro número 7654 son iguales, ni por lo tanto, que tienen el mismo valor. Por tanto, el promedio de todas las hijas posibles de un toro es igual a 1/2 del valor genético del toro, pero cada vaca recibe un gameto diferente al azar. 

Por ambas razones, se dice que el valor genético de un animal es un "efecto aleatorio" ya que se visualiza el valor genético del animal como debido en parte al azar, ya que podría haber tenido otros genes o recibido otros gametos de sus padres.

Por lo tanto, en nuestro modelo habrá dos tipos diferentes de efectos:

- El efecto "rebaño" es un EFECTO FIJO, porque *no* se considera que haya una población de rebaños de la que nuestro rebaño sería uno entre muchos.

- El efecto "animal" es un EFECTO AL AZAR O ALEATORIO, porque consideramos que su valor es una variable aleatoria dado que los animales salen de poblaciones con cierta variación genética.

La diferencia entre efectos fijos y efectos al azar no es siempre clara. Por ejemplo, se puede discutir nuestra afirmación anterior de que el efecto "rebaño" porque en realidad todos los rebaños de una raza tienden a parecerse. Los efectos de un factor de influencia se pueden considerar unas veces como fijos y otras como al azar, dependiendo de las circunstancias. La definición de un efecto como fijo o como al azar, pertenece a las ASUNCIONES del modelo.

Un modelo en el que se encuentran al mismo tiempo efectos fijos y efectos al azar es un MODELO MIXTO (Mixed Model). Por supuesto, en un modelo mixto, los efectos fijos y los efectos al azar no se pueden tratar de la misma manera. 


Las esperanzas matemáticas y matrices de varianzas-covarianzas de los efectos al azar serán, para el efecto genético $w$:

$$E(\mathbf{w}) = \mathbf{0}; Var(\mathbf{w}) = \mathbf{G}$$

y para el residuo $e$:

$$E(\mathbf{e}) = \mathbf{0}; Var(\mathbf{e}) = \mathbf{R}$$

El modelo es (3):

$$\mathbf{y} = \mathbf{X} \boldsymbol{\beta} + \mathbf{Z w} + \mathbf{e}$$

donde se puede definir un vector de "nuevos" residuos $\mathbf{f} = \mathbf{Z w} + \mathbf{e}$ tal que un modelo equivalente es $\mathbf{y} = \mathbf{X} \boldsymbol{\beta} +  \mathbf{f}$. 

La esperanza matemática y la matriz de varianzas-covarianzas del vector $\mathbf{f}$ es:

$$E(\mathbf{f}) = E(\mathbf{Z w} + \mathbf{e}) = E(\mathbf{Z w}) + E(\mathbf{e}) = \mathbf{Z 0} + \mathbf{0} = \mathbf{0}$$

$$Var(\mathbf{f}) = Var(\mathbf{Z w} + \mathbf{e}) = Var(\mathbf{Z w}) + Var(\mathbf{e}) = \mathbf{Z G Z'} + \mathbf{R} = \mathbf{V}$$

Aplicando el método generalizado de los mínimos cuadrados (GLS), las ecuaciones normales son:



$$
\mathbf{X}'\mathbf{V}^{-1} \mathbf{X} \boldsymbol{\hat \beta} = 
\mathbf{X}'\mathbf{V}^{-1} \mathbf{y}
$$

## BLUP (Best Linear Unbiased Prediction)


Una vez obtenido $\boldsymbol{\hat \beta}$, los estimadores (o predictores) de los valores genéticos $w$ se pueden obtener de esta manera:

$$ \mathbf{\hat w}=\mathbf{GZ}'\mathbf{V^{-1}}(\mathbf{y-X}\hat{\boldsymbol{\beta}}) $$

Estos estimadores $\mathbf{\hat w}$ son la *esperanza condicional* de los valores genéticos dados los datos ($y$), se denominan Best Linear Unbiased Prediction (BLUP), y tienen una serie de propiedades óptimas que no detallaremos aquí.

Estas ecuaciones, en la mayor parte de los casos de interés para la mejora genética animal resultaban imposibles de resolver. Uno de los principales problemas para ello es la inversión de la matriz $\mathbf{V}$ de las varianzas-covarianzas entre los rendimientos individuales cuya dimensión es $n \times n$, donde $n$ es el número de observaciones.

La matriz $\mathbf{R}$ tiene la misma dimensión de $\mathbf{V}$, pero normalmente tiene una estructura interna que permite invertirla fácilmente (muchas veces $\mathbf{R}$ es una matriz diagonal o diagonal de bloques). La matriz $\mathbf{G}$ puede tener una dimensión menor que $\mathbf{V}$ y $\mathbf{R}$ y su inversa es además fácil de calcular. Por esto, la aplicación de modelos lineales en la mejora genética dio un gran paso adelante, cuando Henderson y Searle consiguieron demostrar, que las mismas
soluciones para $\mathbf{b}$ y $\mathbf{w}$ de se pueden obtener también mediante la siguiente expresión, que se denomina habitualmente las ecuaciones del modelo mixto:

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

Las soluciones de este último sistema de ecuaciones son:

- $\hat{\boldsymbol{\beta}}$: estimadores GLS (o BLUE) de los efectos fijos $\boldsymbol{\beta}$
- $\hat{\mathbf{w}}$: predicciones BLUP de los efectos al azar

Los efectos genéticos calculados son:

- predictores óptimos lineales (Best Linear Predictions), porque se han obtenido mediante aplicación del método de los mínimos cuadrados generalizados, a partir de un modelo lineal.

- insesgados (Unbiased), porque se ha tenido en cuenta al mismo tiempo los factores de influencia con efectos fijos (ver 4.3) .

Por eso estos valores se llaman "best linear unbiased predictors", o abreviado "BLUP" de los efectos genéticos considerados.

# Apuntes

| $\Omega$/d | $d_a$                | $d_b$                |
|------------|----------------------|----------------------|
| $H_a$      | Acierto              | Error=$P(d_b | H_a)$ |
| $H_b$      | Error=$P(d_a | H_b)$ | Acierto              |

Neyman y Pearson proponen quitar la simetría entre las dos hipótesis y de esa forma
estar convencidos de una de las dos hipótesis.

| $\Omega$/d            | $d_0 \rightarrow d_a$ | $d_1 \rightarrow d_b$ |
|-----------------------|-----------------------|-----------------------|
| $H_0 \rightarrow H_a$ | Acierto               | Error=$P(d_1 | H_0)$  |
| $H_1 \rightarrow H_b$ | Error=$P(d_0 | H_1)$  | Acierto               |

Donde $H_0$ es la hipótesis de la que estaremos convencidos.

Podemos medir según pearson  $t_{exp} = \frac{\bar{x}_M - \bar{x}_p}{\sqrt{\frac{s^2}{n}}}$ a esto le llama el profesor contraste heurístico.

Hay otro método que es el análisis de la varianza.
Por ejemplo tenemos 4 grupos y queremos ver si los 4 grupos pertenecen a poblaciones con la misma media. Para comprobar esto se hace $\frac{\sigma_1^2}{\sigma_2^2}$.

Como requisitos previos todas las poblaciones tienen la misma varianza y poceden de poblaciones regidas por normales.

Supongamos que tenemos los datos de las alguras de los españoles, tomo una muestra de 100 personas y compruebo si la hipotesis es cierta con respecto a los datos que teníamos previamente.

Si además tenemos el peso de la gente podemos decidir hacer el mismo contraste de hipótesis mediante la t de Student para comprobar si la hipótesis que teníamos del peso es la misma. Si utilizamos la misma muestra para el peso y la altura no lo estamos haciendo bien porque el peso y la altura no son independientes entre sí.

# Nos da acceso al dataframe survey
library(MASS)
tb1<-table(survey$Smoke, survey$Exer)
chisq.test(tb1)->kk
# Obtenemos un p-valor de 0.48 por lo que no rechazamos la hipótesis
# nula que es que fumar y hacer ejercicio son independientes.
kk

# Ahora sólo con hombres
tb2<-table(survey$Smoke[survey$Sex=="Male"], survey$Exer[survey$Sex=="Male"])
# El p-valor es 0.58 asi que todo ok
chisq.test(tb2)

# Ahora sólo con mujeres
tb3<-table(survey$Smoke[survey$Sex=="Female"], survey$Exer[survey$Sex=="Female"])
# El p-valor es 0.58 asi que todo ok
chisq.test(tb3)

# Nos ha salido un waning, combinamos las columnas para solucionarlo
ctb1 = cbind(tb1[,1], tb1[,2]+tb1[,3])
chisq.test(ctb1)

# Generamos valores aleatorios de una poisson
tb<-table(rpois(n=100,lambda=1))

# Test de si el generador de numeros aleatorios sigue una normal
muestra<-rnorm(50)
shapiro.test(muestra)

# Leemos los datos
read.csv("http://www.ugr.es/local/andresgc/Datos.txt")->datos

# Test de si las alturas de los hombres sigue una normal
alturas_hombre<-datos$Altura[datos$Sexo=="Hombre"]
shapiro.test(alturas_hombre)

# Test de si las alturas de las mujeres sigue una normal
alturas_mujeres<-datos$Altura[datos$Sexo=="Mujer"]
shapiro.test(alturas_mujeres)

# Test de si las alturas de las personas sigue una normal
alturas<-datos$Altura
shapiro.test(alturas)

# Test de si las alturas siguen una normal de media 168 cm
# Ambas ordenes hacen lo mismo porque por defecto mu=0
# Sale un p-valor super chico así que rechazamos la hipótesis nula.
t.test(x=datos$Altura,mu=168)
t.test(x=datos$Altura-168)

# Test de si las alturas de las mujeres siguen una normal de media 168 cm
# Ambas ordenes hacen lo mismo porque por defecto mu=0
# Como sale un p-valor mayor que 0.05 no se rechaza la hipótesis nula
t.test(x=datos$Altura[datos$Sexo=="Mujer"],mu=168)
t.test(x=datos$Altura[datos$Sexo=="Mujer"]-168)

# Sabemos que las mujeres tienen una altura media de 168 procedentes
# de una normal. Queremos ver si ha cambiado la media a un número mayor.
# Sale que la media no ha aumentado.
t.test(x=datos$Altura[datos$Sexo=="Mujer"],mu=168, alternative="greater")

# Sabemos que los hombres tienen una altura media de 168 procedentes
# de una normal. Queremos ver si ha cambiado la media a un número mayor.
# Sale que la media ha aumentado.
t.test(x=datos$Altura[datos$Sexo=="Hombre"],mu=168, alternative="greater")

# Estamos convencidos de que la altura media en hombres es la de las alturas_mujeres
# más 5 y queremos ver si ha cambiado. No sabemos si las varianzas son iguales o no
# Le vamos a sumar 5 a las mujeres para "igualar" la media teorizada
# Sale que el p-valor es 0.03 entonces rechazamos la hipótesis nula y aceptamos la
# alternativa que es que la diferencia de las medias no es cero.
altura_hombres<-datos$Altura[datos$Sexo=="Hombre"]
altura_mujeres<-datos$Altura[datos$Sexo=="Mujer"]+5
t.test(x=altura_hombres,y=altura_mujeres)

# Pesos antes de la dieta 61 72 49 73 67 y después de la dieta
# son 63.5 75 47 60 65
datos_peso<-read.csv("./datos_peso.txt")
t.test(x=datos_peso$Peso_antes, y=datos_peso$Peso_despues, paired=T)
t.test(x=datos_peso$Peso_antes-datos_peso$Peso_despues)

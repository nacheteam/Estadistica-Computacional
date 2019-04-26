dibujaPoligono <- function(x,y){
  # Obtenemos los límites para pintar el polígono
  minimo = min(c(min(x), min(y)))-1
  maximo = max(c(max(x), max(y)))+1
  # Creamos un plot vacío
  plot(x=c(0,1), y=c(0,1), xlim=c(minimo,maximo), ylim=c(minimo,maximo),type="n")
  # Lo pintamos con borde azul
  polygon(x,y,border="blue")
}

dentroCuadradoRecto <- function(x,y, punto){
  # Los cuadrados de este tipo son de la forma {(min,min), (max, min), (max,max), (min,max)}
  # Pintamos el cuadrado y el punto
  dibujaPoligono(x,y)
  points(x=c(punto[1]), y=c(punto[2]))
  # Si el punto está en el borde no se considera dentro del polígono!
  return(punto[1]<max(x) && punto[1]>min(x) && punto[2]>min(y) && punto[2]<max(y))
}

obtenRecta <- function(a,b){
  # Recta del tipo y=m*x+c
  # Obtenemos la pendiente
  m<-((b[2]-a[2])/(b[1]-a[1]))
  # Obtenemos el término independiente
  c<- a[2] - m*a[1]
  # Lo devolvemos como una lista
  return(list(pendiente=m, termino_independiente=c))
}

puntoRecta <- function(a,b,punto){
  # Si un punto está por debajo de la recta entonces devolvemos -1, si está en la recta devolvemos 0
  # y si está por encima devolvemos 1

  #Obtenemos la recta usando la función obtenRecta
  recta<-function(x){obtenRecta(a,b)$pendiente*x + obtenRecta(a,b)$termino_independiente}
  if(punto[2]<recta(punto[1]))
    return(-1)
  else if(punto[2]>recta(punto[1]))
    return(1)
  else
    return(0)
}

dentroCuadradoTorcido <- function(x,y,punto){
  A = c(x[1],y[1])
  B = c(x[2],y[2])
  C = c(x[3],y[3])
  D = c(x[4],y[4])

  pendiente = obtenRecta(B,C)$pendiente

  pos_recta1 = puntoRecta(A,B,punto)
  pos_recta2 = puntoRecta(B,C,punto)
  pos_recta3 = puntoRecta(C,D,punto)
  pos_recta4 = puntoRecta(D,A,punto)

  # Pintamos el cuadrado y el punto
  dibujaPoligono(x,y)
  points(x=c(punto[1]), y=c(punto[2]))

  if(pendiente>0)
    return(pos_recta1==1 && pos_recta2==1 && pos_recta3==-1 && pos_recta4==-1)
  else
    return(pos_recta1==1 && pos_recta2==-1 && pos_recta3==-1 && pos_recta4==1)
}

puntoDentroCuadrado <- function(x,y,punto){
  A = c(x[1],y[1])
  B = c(x[2],y[2])
  C = c(x[3],y[3])
  D = c(x[4],y[4])
  if(C[1]==B[1]){
    cat("Utilizando la función del cuadrado recto\n")
    return(dentroCuadradoRecto(x,y,punto))
  }
  else{
    cat("Utilizando la función del cuadrado torcido\n")
    return(dentroCuadradoTorcido(x,y,punto))
  }
}

dentroCuadradoRectoGeneral <- function(x,y, punto){
  A = c(x[1],y[1])
  B = c(x[2],y[2])
  C = c(x[3],y[3])
  D = c(x[4],y[4])
  # Pintamos el cuadrado y el punto
  dibujaPoligono(x,y)
  points(x=c(punto[1]), y=c(punto[2]))
  # Si el punto está en el borde no se considera dentro del polígono!
  return(punto[1]<max(x) && punto[1]>min(x) && puntoRecta(A,B,punto)==1 && puntoRecta(C,D,punto)==-1)
}

puntoDentroCuadrado <- function(x,y,punto){
  A = c(x[1],y[1])
  B = c(x[2],y[2])
  C = c(x[3],y[3])
  D = c(x[4],y[4])
  if(C[1]==B[1]){
    cat("Utilizando la función del cuadrado recto\n")
    return(dentroCuadradoRectoGeneral(x,y,punto))
  }
  else{
    cat("Utilizando la función del cuadrado torcido\n")
    return(dentroCuadradoTorcido(x,y,punto))
  }
}

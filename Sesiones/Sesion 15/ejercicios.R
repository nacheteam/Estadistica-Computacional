cordX = c(1,0,-1,0)
cordY = c(0,1,0,-1)

plot(x=c(0,1), y=c(0,1), xlim=c(-2,2), ylim=c(-2,2), xlab="Eje X", ylab="Eje Y",type="n", main="Recinto")
polygon(x=cordX, y=cordY)

recta <- function(x,x0,y0,x1,y1){
  return(y0 + ((x-x0)*(y1-y0))/(x1-x0))
}

# Si encima=1 entonces comprobamos si esta por encima, si es -1 comprobamos si
# está por debajo.
posicionRecta <- function(x,y,x0,y0,x1,y1,encima){
    return((y-recta(x,x0,y0,x1,y1))*encima>=0)
}

dentropoligono <- function(xp,yp=0,x=c(1,0,-1,0),y=c(0,1,0,-1),f=c(-1,-1,1,1)){
	x=c(x.x[1])
	y=c(y,y[1])
	result=T
	for(i in 1:(length(x)-1)){
		result = result&posicionRecta(xp,yp, x[i],y[i], x[i+1],y[i+1], f[i])
	}

	return(result)
}

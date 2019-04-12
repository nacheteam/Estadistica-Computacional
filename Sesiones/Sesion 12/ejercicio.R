recta <- function(x,x0,y0,x1,y1){
	return(x*((y1-y0)/(x1-x0))-x0*((y1-y0)/(x1-x0))+y0)
}

posicion_recta <- function(x0,y0,x1,y1,puntox,puntoy){
	valor = recta(puntox,x0,y0,x1,y1)
	if(valor<puntoy)
		return(1)
	else if(valor==puntoy)
		return(0)
	else
		return(-1)
}

dibuja_circunferencia <- function(R){
  f = function(x){sqrt(R^2-x^2)}
  x11()
  curve(f(x),xlim=c(-R,R),ylim=c(-R,R),col="blue")
  curve(-f(x),add=T,col="blue")
}

sucesion <- function(n=50, x0 = 0, a = 0, b = 1){
	d = 0:n
	d[1] = x0
	for(i in 2:(n+1)){
		v = rnorm(1, mean=a, sd = b)
		d[i] = v+d[i-1]
	}
	return(d)
}

f <- function(n=50,a=0,b=.1, r=1,Cx = 0, Cy = 0){
	X = sucesion(n,Cx,a,b)
	Y = sucesion(n,Cy,a,b)
	Fuera = F
	for(i in 1:(n+1)){
		if(g(X[i],Y[i], r, Cx, Cy)){
			Fuera = T
			break
		}
	}
	curve(sqrt(r^2-(x-Cx)^2)+Cy, xlim=c(-r+Cx,r+Cx), ylim=c(-r+Cy,r+Cy), from=-r+Cx, to =r+Cx)
	curve(-sqrt(r^2-(x-Cx)^2)+Cy, add=T, from=-r+Cx, to = r+Cx)
	lines(X[1:i],Y[1:i], col="blue")
	return(Fuera)
}

g <- function(x,y, r = 1, Cx = 0, Cy = 0){
	return (((x-Cx)^2+(y-Cy)^2)>=r^2)
}


comprueba_fuera <- function(n, b_s){
	s = 0
	for(i in 1:100){
         if(f(n, b = b_s)){
            s = s+1
         }
      }
	return(s/100)
}

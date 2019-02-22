# Sesión 2
- El tipo en R es restrictivo, esto es, si hacemos un vector de cadenas y metemos un entero este entero se convierte a cadena o viceversa si es posible. Un vector solo puede tener elementos de un tipo.
- La ayuda de tipo ?funcion si la pedimos con una funcion inline como ":" entonces tenemos que llamarla como ?":"
- Se puede modificar el modo de un vector, por ejemplo mode(kk)="numeric"
- length(kk) también se puede modificar de igual forma
- Los elementos de los vectores se acceden con corchetes y, desagradablemente, empiezan en 1.
- Se puede acceder a un conjunto de elementos de un vector con un vector de indices x\[indices\].
- Los indices de los vectores se tienen que ver como restricciones, así si ponemos x\[1\] se restringe al primer elemento, si ponemos x\[indices\] se restringe al conjunto de indices, si ponemos x\[\] no se restringe a nada y sale todo el vector.
- Se puede hacer por ejemplo consultas con valores logicos:
```
> sexo <- c("H","H","M","M","H")
> nombre <- c("Pedro","Juan","Ana","Lola","Rafael")
> sexo=="H"
[1]  TRUE  TRUE FALSE FALSE  TRUE
> nombre[sexo=="H"]
[1] "Pedro"  "Juan"   "Rafael"
```
- Los indices en las matrices no funcionan como matriz\[ind1\]\[ind2\] si no como matriz\[ind1,ind2\]
- Lo de las restricciones de los vectores, los conjuntos de indices y los valores lógicos como índices funcionan de la misma forma con matrices.
- Ojo que si haces matriz1*matriz2 se multiplican elemento a elemento. Si quieres hacer el producto matricial común se hace como matriz1%*%matriz2.
- La traspuesta de una matriz se consigue como t(matriz)

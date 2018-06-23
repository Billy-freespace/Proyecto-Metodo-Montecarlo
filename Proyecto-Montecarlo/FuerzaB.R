
#Establecemos los parametros
t <-seq(1,3,by = 0.01)
x <- c(1,t,3)
y <- c(0,exp(t),0)
#Creamos un contador en 0 quien llegara a ser la cantidad de puntos aleatorios
contador <- 0
#Definimos el numero de puntos aleatorios
n = 1000
#Definimos un bucle for que ira distinguiendo el numero de puntos bajo la grafica
for (i in 1:n) {
  x <-runif(n,1,3)
  y <-runif(n,exp(1),exp(3))
  if(y[i] <= exp(x[i]))
    contador <- contador +1
}
#Calculamos la probabilidad
prob <-(contador/n)
prob

#Calculapmos el area bajo la curva aprox
area <- prob*2*exp(3)
area
#Comparamos con la verdadera area
exp(3)-exp(1)

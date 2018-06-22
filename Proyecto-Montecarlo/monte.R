#exponencial
#Definimos la curva
curve(exp,0.5,3.5,lwd=2,axes = F,xlab='',ylab = '')
#Estableciendo el eje x
axis(1)
#Creando una secuencia para definir las coordenadas 
t <-seq(1,3,by = 0.01)
x <- c(1,t,3)
y <- c(0,exp(t),0)
#Sombreamos el area bajo la curva seleccionada
polygon(x,y,col = 'grey')
#Añade una linea horizontar en y=0
abline(h=0,lwd=2)
#Genera el rectangulo
rect(1,0,3,exp(3),border = 'red',lwd = 3)
#Nnumero de muestras aleatorias
n= 20000
#Produce la aleatoriedad de las muestras
x1 <- runif(n,1,3)
y1 <- runif(n,0,exp(3))
#delimita la seccion superior e inferior para cada muestra
ab <- as.factor((y1 <= exp(x1))*1)
#muestra las variables aliatorias en la grafica
points(x1,y1,col=c(1,2)[ab],pch = c(20,20)[ab])
#valor real del area
exp(3)-exp(1)
#hallamos el area aproximada
table(ab)/n
(table(ab)/n)*2*exp(3)

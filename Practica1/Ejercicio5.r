
# Integrantes :
# - Fidel Callupe Ganoza 20131319E
# - Nicolás Rojas Minaya 20170616G
# - Guillermo Borjas Córdova 20090312A

# A)
#Diagrama de dispersión simple

plot.new()
plot.window(range(pressure$temperature),range(pressure$pressure))
box()
axis(1)
axis(2)
points(pressure$temperature,pressure$pressure)
mtext("temperatura",side = 1,line = 2)
mtext("presion",side = 2,line = 3)
mtext("Presion de vapor de Mercurio\ncomo una funcion de la Temperatura",side = 3,line = 1,font = 2)

#Descripcion
#-plot.new()
#Causa la finalización del trazado en el trazado actual (si hay uno) y un avance a un nuevo marco grafico. 
#-plot.window()
#Esta función configura el sistema de coordenadas del entorno para una ventana de gráficos.
#---range()
#---devuelve un vector que contiene el mínimo y el máximo de todos los argumentos dados.
#-box()
#Esta función dibuja un cuadro alrededor de la gráfica actual
#-axis()
#Agrega un eje al gráfico actual, lo que permite la especificación del lado, posición, etiquetas y otras opciones.
#-axis(side)
#---side
#Un número entero que especifica en qué lado de la gráfica se dibujará el eje.
#El eje se coloca de la siguiente manera: 1 = abajo, 2 = izquierda, 3 = arriba y 4 = derecha.
#-points()
#Es una función genérica para dibujar una secuencia de puntos en las coordenadas especificadas.
#Los caracteres especificados se trazan, centrados en las coordenadas.
#-mtext()
#Se escribe en uno de los cuatro márgenes de la región de la figura actual o en uno de los márgenes exteriores de la región 
#-mtext(text,side,line,font)
#---text
#Un carácter o vector de expresión que especifica el texto que se escribirá.
#---side
#Un número entero que especifica en qué lado de la grafica se escribirá el texto.
#El texto se coloca de la siguiente manera: 1 = abajo, 2 = izquierda, 3 = arriba y 4 = derecha.
#---line
#La distancia en la que va el texto del lado de la gráfica, comenzando en 0 contando hacia afuera.
#---font
#Fuente para el texto

# B)

library(package="grid")
#Mueve a una nueva página
grid.newpage()
#Estas funciones proporcionan formas de agregar o eliminar ventanas gráficas y de navegar entre ventanas
pushViewport(viewport(layout=grid.layout(1, 1),gp=gpar(cex=0.9))) 
pushViewport(viewport(layout.pos.row=1,layout.pos.col=1))
marg.v<-c(4,3,4,3)
pushViewport(plotViewport(margins=marg.v))
pushViewport(dataViewport(xData=pressure$temperature,yData=pressure$pressure))
#Esta función crea y dibuja rectángulos.
grid.rect()
#Esta función crea y dibuja un eje x.
ejex<-c(0,50,100,150,200,250,300,350)
grid.xaxis(at=ejex,name="coord.x") 
#Esta función crea y dibuja un eje y.
ejey<-c(0,200,400,600,800)
grid.yaxis(at=ejey,name="coord.y")
#Edita la Descripción de un Objeto Gráfico de Cuadrícula
grid.edit(gPath("coord.y","labels"),rot=90)
#Esta función crea y dibuja símbolos de datos
grid.points(x=pressure$temperature,y=pressure$pressure,gp=gpar(cex=0.6)) 
#Estas funciones crean y dibujan expresiones de texto
grid.text(label="presion",x=unit(-2.5,"line"),rot=90)
grid.text(label="temperatura",y=unit(-3,"line"),rot=0) 
grid.text(label="Presion de vapor de Mercurio\ncomo una funcion de la Temperatura",x=unit(x=180,units="native"),y=unit(x=950,units="native"),gp=gpar(fontface="bold")) 




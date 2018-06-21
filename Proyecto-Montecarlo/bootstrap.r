#bootstrap
#paso1:sacar de una muestra de tamaño "n" muestras con remplazo
#paso2:acumular el estadistico de interes
#paso3:hallar la media y error estandar de los datos acumulados
#llamemos a nuestra funcion boot
boot=function(muestra,rep,operacion,...){
  #argumentos:muestra es la muestra que trabajaremos
  #rep:el numero de veces que remuestramos a partir de la muestra original
  #operacion,...indica el estadistico que queremos estimar mediante el bootstrap
  tamaño=length(muestra)
  #sabemos de que tamaño es nuestra muestra
  acumular=rep(NA,tamaño)#aqui guardamos nuestras estimaciones
  for(i in 1:rep){ #empezamos el bucle
    muestra.b=sample(muestra,tamaño,TRUE) #sacamos nuestra muestra bootstrap
    acumular[i]=operacion(muestra.b,...) #acumulamos el estadistico de interes
  }#cerramos el bucle
  estad.b=mean(acumular) #calculamos la estimacion bootstrap
  ee.b=sd(acumular)#calculamos el error estandar bootstrap
  resul=list(estad.b=estad.b,ee.b=ee.b) # listamos los resultados
  return(resul)
}
#ahora el programa esta listo para ser probado
#creamos una muestra de tamaño 50
mues=rnorm(50,10,3)
#aplicando la fun boot
#para la media
boot(mues,200,mean)

#en bootboot(mues,200,mean) #indicaque nuestra funcion repite 200 muestras bootstrap
#y es operado para la media
boot(mues,200,mean)

#el primer resultao es la media bootstrap
#el segundo es el error estandar del estimador

#ahora probemos con otros estadisticos

#para la median
boot(mues,200,median)

#para el precentil 30
boot(mues,200,quantile,0.3)

#para el cuantil 0.987
boot(mues,200,quantile,0.987)


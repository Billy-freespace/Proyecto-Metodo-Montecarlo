#bootstrap
#paso1: sacar de una muestra de tamaño "n" muestras con reemplazo
#paso2: acumular el estadístico de interés
#paso3: hallar la media y error estándar de los datos acumulados
#llamemos a nuestra función boot
boot=function(muestra,rep,operacion,...){
  #argumentos: 
  #muestra: es la muestra que trabajaremos
  #rep: el número de veces que remuestramos a partir de la muestra original
  #operacion,... : indica el estadístico que queremos estimar mediante el bootstrap
  tamaño=length(muestra)
  #sabemos de qué tamaño es nuestra muestra
  acumular=rep(NA,tamaño) #aquí guardamos nuestras estimaciones
  for(i in 1:rep){ #empezamos el bucle
    muestra.b=sample(muestra,tama?o,TRUE) #sacamos nuestra muestra bootstrap
    acumular[i]=operacion(muestra.b,...) #acumulamos el estadístico de interés
  } #cerramos el bucle
  estad.b=mean(acumular) #calculamos la estimación bootstrap
  ee.b=sd(acumular) #calculamos el error estándar bootstrap
  resul=list(estad.b=estad.b,ee.b=ee.b) # listamos los resultados
  return(resul)
}
#ahora el programa está listo para ser probado
#creamos una muestra de tamaño 50
mues=rnorm(50,10,3)
#aplicando la función boot
#para la media
boot(mues,200,mean)

#en boot(mues,200,mean) indica que nuestra función repite 200 muestras bootstrap
#y es operado para la media
boot(mues,200,mean)

#el primer resultao es la media bootstrap
#el segundo es el error estandar del estimador

#ahora probemos con otros estadísticos

#para la mediana
boot(mues,200,median)

#para el percentil 30
boot(mues,200,quantile,0.3)

#para el cuantil 0.987
boot(mues,200,quantile,0.987)


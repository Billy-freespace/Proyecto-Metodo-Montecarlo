#jackknife
#llamamos a nuestra funcion jack
jack=function(datos,fun,...){
  #variables: datos que sera la muestra a trabajar
  #fun: el estadistico que queremos hallar
  n=length(datos) #tamaño de la muestra
  est.clas=as.numeric(fun(datos,...))
  acumular=rep(0,n)#aqui guardamos nuestras estimaciones
  for(i in 1:n){#inicio del ciclo
    acumular[i]=as.numeric(fun(datos[-i],...))#acumulamos el estadistico de interes
  }#fin del ciclo
  est.j=as.numeric(mean(acumular))#calculamos la estimacion jackknife
  ee.j=sqrt((n-1)*sum((acumular-est.j)^2)/n )#calculamos el error estandar jackknife
  sesgo=as.numeric((n-1)*(est.j-est.clas))#calculamos el sesgo
  return(cbind(est.clas,est.j,ee.j,sesgo))# mostramos los resultados
}
muestra=rexp(50,1/2)
#para la diferentes tipos de estadisticos
jack(muestra,mean)
jack(muestra,median)
jack(muestra,quantile,0.25)
jack(muestra,IQR)

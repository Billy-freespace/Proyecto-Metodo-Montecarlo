#jacknife
jack=function(datos,fun,...){
  n=length(datos)
  est.clas=as.numeric(fun(datos,...))
  acumular=rep(0,n)
  for(i in 1:n){
    acumular[i]=as.numeric(fun(datos[-i],...))
  }
  est.j=as.numeric(mean(acumular))
  ee.j=sqrt((n-1)*sum((acumular-est.j)^2)/n )
  sesgo=as.numeric((n-1)*(est.j-est.clas))
  return(cbind(est.clas,est.j,ee.j,sesgo))
}
muestra=rexp(50,1/2)
jack(muestra,mean)
jack(muestra,median)
jack(muestra,quantile,0.25)
jack(muestra,IQR)

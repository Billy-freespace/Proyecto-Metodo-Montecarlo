
# Nombre : Fidel Callupe Ganoza 20131319E

# A)
#devuelve la transpuesta de cada matriz de la lista usando un ciclo for()
matlist <- list(matrix(c(T,F,T,T),2,2),matrix(c("a","c","b","z","p","q"),3,2),matrix(1:8,2,4))
matlist
for(i in 1:length(matlist)){
  matlist[[i]] <- t(matlist[[i]])
}
matlist

#lapply devuelve una lista de la misma longitud que X, cada elemento de la cual es el 
#resultado de aplicar FUN al elemento correspondiente de X.
matlist <- list(matrix(c(T,F,T,T),2,2),matrix(c("a","c","b","z","p","q"),3,2),matrix(1:8,2,4))
matlist.l<-lapply(X=matlist,FUN=t)
matlist.l

# B)
#apply devuelve una matrix de valores obtenidos por aplicar una FUN a MARGIN del array dado
qux <- array(96:1,dim=c(4,4,2,3))
matlist.a<-apply(X = qux[,,2,],MARGIN=3,FUN=diag)
matlist.a

matlist.d <- apply(X=qux[,4,,],MARGIN=3, FUN=dim)
matlist.sf <- apply(X=matlist.d, MARGIN=1, FUN=sum)
matlist.sf

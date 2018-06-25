
## Integrantes : 
# - Fidel Callupe Ganoza 20131319E
# - Nicolás Rojas Minaya 20170616G
# - Guillermo Borjas Córdova 20090312A

# A)
#Analizamos un doble bucle for, dado originalmente por el problema
loopvec1 <- 5:7
loopvec2 <- 9:6
mat1 <- matrix(NA,length(loopvec1),length(loopvec2))
mat1
for(i in 1:length(loopvec1)){
  for(j in 1:length(loopvec2)){
    mat1[i,j] <- loopvec1[i]*loopvec2[j]
    }
  }
mat1

#Convertimos el doble bucle for, en un solo bucle for, usando "if"
loopvec1 <- 5:7
loopvec2 <- 9:6
mat1 <- matrix(NA,length(loopvec1),length(loopvec2))
mat1
limit<-length(loopvec1)*length(loopvec2)
j<- 1
k<- 1
for(i in 1:limit){
  mat1[j,k] <- loopvec1[j]*loopvec2[k]
  k<- k+1
  if(k>4){
    j<- j+1
    k<- 1
  }
}
mat1

# B)
#Este codigo toma un vector de caracteres y devuelve un vector de los valores numericos
#apropiados relacionado a la cadena de caracteres
mystring<-c("Peter","Homer","Lois","Stewie","Maggie","Bart")
for(i in 1:length(mystring)){
  mystring[i]<-switch(EXPR=mystring[i],Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90,NA)
}
mystring

# C)
#Hacemos bucles anidados para realizar busquedas en datos tipo list
#y evaluamos en cada caso dado
#caso 1
mylist <- list(aa=c(3.4,1),bb=matrix(1:4,2,2),cc=matrix(c(T,T,F,T,F,F),3,2),dd="string here",
               ee=list(c("hello","you"),matrix(c("hello","there"))),
               ff=matrix(c("red","green","blue","yellow")))
cont <- 0
for(i in 1:length(mylist)){
  member <- mylist[[i]]
  if(is.list(member)){
    for(j in 1:length(member))
      member1 <- member[[j]]
    if(is.matrix(member1)){
      cont <- cont + 1
    }
  }
  if(is.matrix(member)){
    cont <- cont + 1
  }
}
cont

#caso 2
mylist <- list("tricked you",as.vector(matrix(1:6,3,2)))
cont <- 0
for(i in 1:length(mylist)){
  member <- mylist[[i]]
  if(is.list(member)){
    for(j in 1:length(member))
      member1 <- member[[j]]
    if(is.matrix(member1)){
      cont <- cont + 1
    }
  }
  if(is.matrix(member)){
    cont <- cont + 1
  }
}
cont

#caso 3
mylist <- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),rbind(1:10,100:91))
cont <- 0
for(i in 1:length(mylist)){
  member <- mylist[[i]]
  if(is.list(member)){
    for(j in 1:length(member))
      member1 <- member[[j]]
      if(is.matrix(member1)){
        cont <- cont + 1
    }
  }
  if(is.matrix(member)){
    cont <- cont + 1
  }
}
cont


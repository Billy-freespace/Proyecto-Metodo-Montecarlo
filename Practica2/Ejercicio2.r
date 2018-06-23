
# Nombre : Fidel Callupe Ganoza 20131319E

# A)
array(8:1,dim=c(2,2,2))
rep(1:2,3)
seq(from=10,to=8,length=5)
sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3))
which(matrix(c(T,F,T,T),2,2))
which(matrix(c(T,F,T,T),2,2),a=T)

#-array(8:1,dim=c(2,2,2))
#Mixto
#8:1            posicional  data = 8:1
#dim=c(2,2,2)   exacto      dim = length(data)

#-rep(1:2,3)
#Posicional
#rep(x, times=1 , length.out = NA, each = 1)
# x=1:2 , times = 3

#-seq(from=10,to=8,length=5)
#Mixto
#from=10    exacto 
#to=8       exacto
#length=5   parcial   length.out=5

#-sort(decreasing=T,x=c(2,1,1,2,0.3,3,1.3))
#Exacto (no importa el orden)
#sort(x, decreasing = FALSE, ...)

#-which(matrix(c(T,F,T,T),2,2))
#Posicional
#which(x, arr.ind = FALSE, useNames = FALSE)
# x=matrix(c(T,F,T,T),2,2)
#---matrix(c(T,F,T,T),2,2)
#---Posicional
#---matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,dimnames = NULL)
#---data=c(T,F,T,T), nrow=2,ncol=2

#which(matrix(c(T,F,T,T),2,2),a=T)
#Mixto
#matrix(c(T,F,T,T)      posicional  x=matrix(c(T,F,T,T),2,2)
#a=T                    parcial     arr.ind = TRUE
# x=matrix(c(T,F,T,T),2,2)
#---matrix(c(T,F,T,T),2,2)
#---Posicional
#---matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,dimnames = NULL)
#---data=c(T,F,T,T), nrow=2,ncol=2


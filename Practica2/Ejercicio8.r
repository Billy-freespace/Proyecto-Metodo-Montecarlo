
# Nombre : Fidel Callupe Ganoza 20131319E

# A)
#realizaremos una funcion y la verificaremos con unos casos
matinvert<-function(mylist,noinv,nonmat,silent1){
  if(is.list(mylist)){
    if(length(mylist) != 0){
      if(!is.character(nonmat)){
        nonmat<-as.character(nonmat)
        warning("nonmat no es cadena,asi que fue convertida")
      }
      for(i in 1:length(mylist)){
        member <- mylist[[i]]
        if(is.matrix(member)){
          attempt <- try(solve(member),silent=silent1)
          if(class(attempt)=="try-error"){
            mylist[[i]] <- noinv
          }else {
            mylist[[i]] <- attempt
          }
        }else{
          mylist[[i]] <- nonmat
        }
      }
    }else{
      stop("Es una lista vacia")
    }
  }else{
    stop("No es una lista")
  }
  return(mylist)
}
#caso 1
mat1<-matinvert(mylist=list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)),NA,"no es matriz!",TRUE)
mat1

#caso 2
mat2<-matinvert(mylist=list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)),Inf,666,TRUE)
mat2

#caso 3
mat3<-matinvert(mylist=list(1:4,matrix(1:4,1,4),matrix(1:4,4,1),matrix(1:4,2,2)),Inf,666,FALSE)
mat3

#caso 4
x<-list(diag(9),matrix(c(0.2,0.4,0.2,0.1,0.1,0.2),3,3),rbind(c(5,5,1,2),c(2,2,1,8),c(6,1,5,5),c(1,0,2,0)),matrix(1:6,2,3),cbind(c(3,5),c(6,5)),as.vector(diag(2)))
mat4<-matinvert(mylist=x,"matriz inadecuada","no es matriz",TRUE)
mat4

#caso 5
x<-"hola"
mat5<-matinvert(mylist=x,"matriz inadecuada","no es matriz",TRUE)

#caso 6
x<-list()
mat6<-matinvert(mylist=x,"matriz inadecuada","no es matriz",TRUE)

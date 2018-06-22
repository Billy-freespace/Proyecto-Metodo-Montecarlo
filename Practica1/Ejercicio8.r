# A)
#Creamos y almacenamos una data frame
dframe <- data.frame(Persona=c("Stan","Francine","Steve","Roger","Hayley","Klaus"),Sexo=c("M","F","M","M","F","M"),Puntuacion=factor(c("Alto","Medio","Bajo","Alto","Medio","Medio")))
dframe
# B)
#creamos el vector edad y la añadimos a la data frame
edad<-c(41,41,15,1600,21,60)
dframe <- cbind(dframe,edad)
# C)
#reordenamos las variables de columna para sobreescribir la dframe
dframe <-dframe[c("Persona","edad","Sexo","Puntuacion")]
dframe
# D)
#creamos una ueva data frame
mydata2 <- data.frame(Persona=c("Peter","Lois","Meg","Chris","Stewie","Brian"),edad=c(42,40,17,14,1,7),Sexo=factor(c("M","F","F","M","M","M")),Puntuacion=c("Alto","Alto","Bajo","Medio","Alto","Medio"))
mydata2
# E)
#combino mydata2 con dframe
misdatosframe <- rbind(dframe,mydata2)
misdatosframe
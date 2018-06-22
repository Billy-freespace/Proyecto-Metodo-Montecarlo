
# Nombre : 
# - Fidel Callupe Ganoza 20131319E
# - Nicolás Rojas Minaya 20170616G
# - Guillermo Borjas Córdova 20090312A

# A)
#Creamos los objetos
foo <- array(data=1:36,dim=c(3,3,4))
bar <- as.vector(foo)
baz <- as.character(bar)
qux <- as.factor(baz)
quux <- bar+c(-0.1,0.1)
#identificamos las clases
class(foo) #explicito
class(bar) #explicito
class(baz) #explicito
class(qux) #implicito
class(quux)#explicito

# B)
#hayamos la suma de is.numeric(x)+is.integer(x)
foo.ni <- is.numeric(foo)+is.integer(foo)
bar.ni <- is.numeric(bar)+is.integer(bar)
baz.ni <- is.numeric(baz)+is.integer(baz)
qux.ni <- is.numeric(qux)+is.integer(qux)
quux.ni <- is.numeric(quux)+is.integer(quux)
#imprimimos los resultados
foo.ni
bar.ni
baz.ni
qux.ni
quux.ni
#convertimos los cinco resultados en un factor 
coleccion <- c(foo.ni,bar.ni,baz.ni,qux.ni,quux.ni)
coleccion.f <- factor(x=coleccion, levels = c(0,1,2))
coleccion.f
#coerzamos cada uno en un vector numerico
foo.nias <- as.numeric(foo)
bar.nias <- as.numeric(bar)
baz.nias <- as.numeric(baz)
qux.nias <- as.numeric(qux)
quux.nias <- as.numeric(quux)
#imprimimos los resultados
foo.nias
bar.nias
baz.nias
qux.nias
quux.nias
#convertimos los cinco resultados en un factor 
coleccion.nias <- c(foo.nias,bar.nias,baz.nias,qux.nias,quux.nias)
coleccion.nias.f <- factor(x=coleccion.nias)
coleccion.nias.f

# C)
#almacenamos la matriz y realizamos operaciones
M <- matrix(c(34, 23, 33, 42, 41, 1, 0, 0, 1, 1, 1, 2, 1, 1, 2), nrow = 5)
M
#matriz como data frame
mat <- as.data.frame(M)
mat[[1]]
#convirtiendo segunda columna a valores lógicos
mat[[2]] <- as.logical(mat[[2]])
mat[[2]]
#convirtiendo tercera columna como factor
mat[[3]] <- as.factor(mat[[3]])
mat[[3]]
mat




# Integrantes : 
# - Fidel Callupe Ganoza 20131319E
# - Nicolás Rojas Minaya 20170616G
# - Guillermo Borjas Vórdova 20090312A

# A)
#inicio la matriz
A <- matrix(data=c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6 , 6.5),nrow=4,ncol=2,byrow=TRUE)
#muestra matriz
A

# B)
#elimino la fila 1 , la almaceno en la matriz B
B <- A[2:4,]
# muestra la dimension de la matriz B
dim(B)

# C)
# Ordeno la segunda columna de la matriz A de menor a mayor
A[,2] <- sort(A[,2])
A

# D)
#Elimino la cuarta fila y la primera columna y verifico qué devuelve
is.matrix(A[-4, -1])
is.vector(A[-4, -1])
#Me aseguro que devuelva una matriz usando la función matrix
is.matrix(matrix(A[-4, -1]))

# E)
#Tomo los cuatro elementos inferiores de A y los guardo en C
C <- cbind(A[3:4,1], A[3:4,2])

# F)
#Guardo el valor de la posicion C[1,1]
D <- C[1,1]
#Guardo el valor de la posicion C[2,2]
E <- C[2,2]
# piden, la mitad de la suma de los valores de la diagonal de la matriz C
F <- -(E+D)/2
#Operacion de A[4,2] - F
A[4,2] <- F
#Operacion de A[1,2] - F
A[1,2] <- F
#Operacion de A[4,1] - F
A[4,1] <- F
#Operacion de A[1,1] - F
A[1,1] <- F
A

# G)
#Creo la matriz A
A <- matrix(data=c(2,0,0,0,0,3,0,0,0,0,5,0,0,0,0,-1),nrow=4,ncol=4,byrow=TRUE)
A
# Multiplico la matriz A con su inversa
B <- A%*%solve(A)
#Matriz identidad
C <- diag(x=4)
#Resto la matriz el producto de la matriz A y su inversa con la matriz identidad
D <- B-C
D

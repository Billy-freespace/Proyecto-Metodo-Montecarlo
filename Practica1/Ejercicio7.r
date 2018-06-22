# A)
#Almacenamos un vector al que llamaremos fi
fi <- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968,8133)
fi
fi[-(which(is.infinite(x=fi^75)))] 
#which comando que nos permitira mostrar los elementos diferentes a infinito
fi^75  #mostramos todos los elementos al elevar a una potencia de 75

# B)
#almacenamos la siguiente matriz creando primero un vector mat
mat<-c(77875.40,-35466.25,-39803.81,27551.45,-73333.85,55976.34,23764.30,36599.69,76694.82,-36478.88,-70585.69,47032.00)
varMatriz <- matrix(mat,nrow = 3,ncol = 4)
varMatriz
#valores que son NaN cuando se eleva a una pot de 65 y dividimos por infinito
varMatriz[-(which(!is.nan(x=varMatriz^65/Inf)))]
varMatriz^65/Inf
#valores que no son (NaN)
varMatriz[-(which(is.nan(x=varMatriz^67+Inf)))]
varMatriz^67+Inf
#comparando con otra matriz
varMatriz[-(which(is.infinite(x=varMatriz^67) & varMatriz^67 == -Inf))]
varMatriz^67
#valores que sean infinito negativo o infinito
varMatriz[-(which(is.infinite(x=varMatriz^67) & varMatriz^67 == Inf))]
varMatriz^67
# C)
#creamos un vector
f2<-c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)
length(f2) # V la longitud de f2 es 8
which(x=is.na(x=f2)) # F si resulta 4 y 8
is.null(x=f2) # F ,regresa TRUE si el valor de su argumento es NULL y de lo contrario FALSE.
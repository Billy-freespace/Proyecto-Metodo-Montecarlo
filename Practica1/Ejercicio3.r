
# Integrantes : 
# - Fidel Callupe Ganoza 20131319E
# - Nicolás Rojas Minaya 20170616G
# - Guillermo Borjas Córdova 20090312A

# A)
#creo dos vectores de caracteres sexo y partido
sexo <- c("F","M","M","M","F","F","F","M","M","M","M","F","M","F","F","F","M","M","M","M")
partido <- c("Laboralistas","Nacional","Nacional","Laboralistas","Nacional","Verdes","Nacional",
             "Nacional","Verdes","Otros","Verdes","Laboralistas","Nacional","Nacional","Laboralistas",
             "Laboralistas","Nacional","Nacional","Laboralistas","Otros")
length(partido)
#los muestro para confirma la creacion de los vectores
sexo
partido

# B)
#creo dos factores basados en los vectores sexo y partido
sexo.f <- factor(x=sexo)
partido.f <- factor(x=partido)
sexo.f
partido.f
#-No hay necesidad de usar ordered=TRUE dado que los niveles se ordenan automáticamente
#de manera alfabéticamente ascendente
#-Usando el argumento ordered=TRUE, confirma que los niveles seguirán este mismo orden,
#por lo que la compración entre dos elementos de los vectores (usando '>' ó '<', etc)
#daría los mismos resultados que la comparación entre sus respectivos factores.

# C)
partido[sexo.f=="M"] #factor de los partidos elegidos por hombres
sexo[partido.f == "Nacional"] #factor de generos que eligieron el partido Nacional

# D)
#añadimos 6 nuevos datos de sexo y partido
sexo <- c(sexo,"M","M","F","F","F","M")
partido <- c(partido,"Nacional","Maori","Maori","Laboralistas","Verdes","Laboralistas")
porcentaje <- c(93,55,29,100,52,84,56,0,33,52,35,53,55,46,40,40,56,45,64,31,10,29,40,95,18,61)
sexo
partido
porcentaje
#creo un factor con niveles de confianza
limite <- c(0,30,70,100)
etiquetas <- c("Bajo", "Moderado", "Alto")

#Guardo la informacion para extraer el fator de los partidos elegidos
cat <- cut(x=porcentaje,breaks=limite,right=F,include.lowest=T,labels = etiquetas)
cat
cat[partido =="Laboralistas"]
cat[partido=="Nacional"]

# Se nota que los que empatizan con el partido laboral tienen más confianza en que
# su partido ganará más escaños en el parlamento que el partido nacional.
# Los que empatizan con el partido nacional, su grado de confianza es menor de que 
# esto suceda.



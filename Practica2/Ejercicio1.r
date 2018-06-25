# Integrantes : 
# - Fidel Callupe Ganoza 20131319E
# - Nicolás Rojas Minaya 20170616G
# - Guillermo Borjas Córdova 20090312A

# A)
#Los primeros 20 elementos del paquete methods son los siguientes:
ls("package:methods")
#[1] "addNextMethod"                  
#[2] "allGenerics"                    
#[3] "allNames"                       
#[4] "Arith"                          
#[5] "as"                             
#[6] "as<-"                           
#[7] "asMethodDefinition"             
#[8] "assignClassDef"                 
#[9] "assignMethodsMetaData"          
#[10] "balanceMethodsList"             
#[11] "body<-"                         
#[12] "cacheGenericsMetaData"          
#[13] "cacheMetaData"                  
#[14] "cacheMethod"                    
#[15] "callGeneric"                    
#[16] "callNextMethod"                 
#[17] "canCoerce"                      
#[18] "cbind2"                         
#[19] "checkAtAssignment"              
#[20] "checkSlotAssignment" 

#Hay en total 218 items en el paquete methods

# B)
#Determina el entorno que posee cada funcion
environment(read.table)
environment(data)
environment(matrix)
environment(jpeg)

# C)
#Usamos ls para confirmar que "smoothScatter" es parte del paquete graphics
ls("package:graphics")=="smoothScatter"


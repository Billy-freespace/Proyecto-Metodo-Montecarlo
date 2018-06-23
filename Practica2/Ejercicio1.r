
# Nombre : Fidel Callupe Ganoza 20131319E

# A)
#los primeros 20 elementos del paquete methods
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

#hay en total 218 items

# B)
#determina el entorno que posee cada funcion
environment(read.table)
environment(data)
environment(matrix)
environment(jpeg)

# C)
#usamos ls para confirmar que "smoothScatter" es parte del paquete graphics
ls("package:graphics")=="smoothScatter"


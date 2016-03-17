#####################
##Acertijo 2, Fibonacci
#####################

library(numbers)
x<-1
i<-1
factores<-1

##La trampa es la funcion primeFactors del paquete numbers que
##encuentra la factorizacion en primos del numero de fibonacci.
##Ya con la descomposicion en primos es calculable el total de factores

while (factores<1000){
 x[i+1]<- sum(tail(x,2)) #esto genera los numeros fibonacci
 factores<-prod(table(primeFactors(x[i+1]))+1) 
 i<-i+1
}	

respuesta2<-tail(x,1)
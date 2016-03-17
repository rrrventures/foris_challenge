####################
##Primer acertijo
###################

##la string la pegué en la variable text

text2<-unlist(strsplit(text,""))

n<-length(text2)
maxcomienzo<-0
maxLen<-1

#Matriz identidad que representa que cada al inicio, al menos sabemos que cada caractér por si solo es un palíndromo
tabla<-diag(600)

##La idea es que encuentras los palíndromos de 2 letras
for (i in 1:(n-1)){
	if (text2[i]==text2[i+1]){
          tabla[i,i+1]<-TRUE
          maxcomienzo<-i
          maxLen<-2
        }
}
     

##Si un palíndromo se le agrega la misma letra a un costado y otro, también es palíndromo     
for (len in 3:n){
	for(i in 1:(n-len)){
          j=i+len-1
          if (text2[i]==text2[j] && tabla[i+1,j-1]){
             tabla[i,j]<-TRUE
             maxcomienzo<-i
             maxLen<-len
          }
        }
}

Respuesta<- text2[maxcomienzo:(maxcomienzo+maxLen-1)]

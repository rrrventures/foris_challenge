####################
##Desafio 3, Triangulo
####################


##Dejar con buen formato el triangulo

mat <- matrix(0, 1000, 1000)
mat[row(mat) <= col(mat)] <- scan("triangulo.txt")
mat <- t(mat)

##Resolver el problema de abajo hacia arriba, partiendo por la penúltima row 

rows<-nrow(mat)

for (i in (rows-1):1){
     for (j in 1:i){
          mat[i,j]<-mat[i,j]+max(mat[i+1,j],mat[i+1,j+1])
      }
}

respuesta3<-mat[1,1]

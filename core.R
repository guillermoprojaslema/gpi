library(cluster)

path <- paste(getwd(),"/gpi/Copia de GPI (respuestas) - Respuestas de formulario (1).csv", sep="")
df <- read.csv(file = path)

df

# clusterizacion (clasificacion)
km <- pam(x=df[,3:length(df)], k=3)

c = cor(df[,3:length(df)])
plot(df[,3:20])

#PERFIL X/Y
#Si la persona o sujeto obtiene de las columnas 20,23,26,53 en total un rango de 13 a 20 punto es claramente del perfil Y. SI obtiene entre 4  a 12 Posee un perfil X
#PERFIL P/T
#Y de las columnas 16,47,48,50 si se obtiene un rango de 13 a 20 puntos de de perfil P y por lo tanto, entre 4 y 12 puntos un perfil T.
#Y de las columnas 29, 47 si se obtiene un rango de 2 a 5 puntos de de perfil P y por lo tanto, entre 6 y 10 puntos un perfil T.
# La pirámide es así
#Estratégico : Los que son Y+P o Y+T. Táctico: X+T, Operacional X+P


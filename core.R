library(cluster)

path <- paste(getwd(),"/gpi/Copia de GPI (respuestas) - Respuestas de formulario (1).csv", sep="")
df <- read.csv(file = path)

df

# clusterizacion (clasificacion)
km <- pam(x=df[,3:length(df)], k=3)

c = cor(df[,3:length(df)])
plot(df[,3:20])

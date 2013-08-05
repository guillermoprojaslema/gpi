library(cluster) #clustering clasico
library(tclust) #clustering restringido
library(rioja) #clustering restringido

# 1 - 12 Habilidades
# 13 - 29 Habilidades o Talentos
# 30 - 34 historia Biografica
# 35 - 43 necesidades
# 44 - 48 Factores ambientales 
# 49 - 52 Perfil P T
# 53 - 56 Perfil X Y

path <- paste(getwd(),"/gpi/Copia de GPI (respuestas) - Respuestas de formulario (1).csv", sep="")
df <- read.csv(file = path)
data <- df[,3:length(df)]
d = dist(x = data)

h = hclust(d, method="ward", members=NULL)
plot(h)
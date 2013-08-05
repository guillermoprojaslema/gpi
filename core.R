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
d = dist(x = data, method="euclidean")

h = hclust(d, method="ward", members=NULL)
plot(h)

# perfil X-Y
XY = df[,c(19, 22, 25, 52)]
PT = df[,c(15, 28, 46, 47, 49)]

#clasificacion a priori que se contrastará con la clasificacion del modelo
xyh = hclust(dist(XY), method="ward", members=NULL)
pth = hclust(dist(PT), method="ward", members=NULL)

XYPT = df[,c(19, 22, 25, 52, 15, 28, 46, 47, 49)]
xypth = hclust(dist(XYPT), method="ward", members=NULL)
plot(xypth)


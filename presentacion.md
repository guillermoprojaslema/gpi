Clasificacion de aptitudes
========================================================

### Antecedentes
La muestra se obtuvo por medio de encuestas por internet


### Clasificación X/Y
tipo X: Trabajan lo menos posible, carecen de ambición, evitan responsabilidades, prefieren que las manden, se resisten a los cambios, son credulas o están mal informadas, harían muy poco por la empresa si no fuera por la dirección.

tipo Y: Relacionan el trabajo con el juego



```{r}
path <- paste(getwd(),"/gpi/Copia de GPI (respuestas) - Respuestas de formulario (1).csv", sep="")
df <- read.csv(file = path)
```

:

```{r fig.width=7, fig.height=6}
df
```



#PERFIL X/Y
#Si la persona obtiene de las columnas 20,23,26,53 en total un rango de 13 a 20 punto es del perfil Y. SI obtiene entre 4 a 12 Posee un perfil X.

#PERFIL P/T
#Y de las columnas 16,47,48,50 si se obtiene un rango de 13 a 20 puntos de de perfil P y por lo tanto, entre 4 y 12 puntos un perfil T.
#Y de las columnas 29, 47 si se obtiene un rango de 2 a 5 puntos de de perfil P y por lo tanto, entre 6 y 10 puntos un perfil T.
# La pirámide es así
#Estratégico : Los que son Y+P o Y+T. Táctico: X+T, Operacional X+P
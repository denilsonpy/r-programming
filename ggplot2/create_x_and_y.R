library(readr)
library(dplyr)
library(ggplot2)
movies <- read_csv("imdb.csv")

# a funcao aes do ggplot serve para definir os eixos 
# x e y do grafico no qual queremos criar uma visualizacao
# para os usuarios
viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins))

viz
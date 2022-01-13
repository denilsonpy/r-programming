# para adicionar camadas para aprimorar a qualidade dos 
# graficos no qual desejamos obter informacoes ultilizamos
# o sinal de mais para adicionar novas camadas aos nossos
# graficos como no exemplo abaixo
viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) +
    geom_point() 


# Podemos alterar as informacoes do grafico para facilitar
# a visualizacao dos dados no exemplo alteramos o titulo
# o subtitulo os eixos x e y e tambem o nome da variavel
# das cores do grafico
viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) +
       geom_point(aes(color=nrOfGenre), alpha=0.5) +
       labs(title="Movie Ratings Vs Award Wins", subtitle="From IMDB dataset", x="Movie Rating", y="Number of Award Wins", color="Number of Genre")


# no grafico a seguir adicionamos a camada geom_point com
# a cor definida com base na variavel de dados passada por
# uma das propriedades dos nossos dados
viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) + geom_point(aes(color=nrOfGenre)) 

# tambem posso atribuir valores "manuais" no exemplo setamos
# a opacidade para .5 antes de decidir mudar algun valor
# grafico voce deve decidir se isso vai melhorar ou complicar
# a visualizacao do seu grafico
viz <- ggplot(data=movies, aes(x=imdbRating, y=nrOfWins)) +
       geom_point(aes(color=nrOfGenre), alpha=".5") 
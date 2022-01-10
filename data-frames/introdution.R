# Um quadro de dados é um objeto R que armazena 
# dados tabulares em uma estrutura de tabela composta 
# de linhas e colunas

# geralmente os dados são importados (sql, csv, xlsx)
#   address   	  age	   name
# 123 Main St.	  34   John smith
# 456 Maple Ave.	28	 Jane Doe
# 789 Broadway	  51	 Joe Schmo

# Nota: ao trabalhar com dplyr, você pode ver funções que
# pegam um quadro de dados como um argumento e geram algo 
# chamado tibble. Tibbles são versões modernas de frames
# de dados em R e operam essencialmente da mesma maneira.
# Os termos quadro e quadro de dados são freqüentemente usados
# ​​de forma intercambiável.

library(readr)
library(dplyr)

songs <- read_csv('songs.csv')

songs

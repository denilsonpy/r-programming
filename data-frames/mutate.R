# Mutate adiciona novas colunas com os sem dados da tabela
# No exemplo utilizamos dados do dataframe para criar novas
# colunas com valores desejados
# is_true = TRUE <-- exemplo de valor onde o dados é setado 
# por mim mesmo 
dogs <- dogs %>%
  mutate(avg_height = (height_low_inches + height_high_inches)/2, avg_weight = (weight_low_lbs + weight_high_lbs)/2, rank_change_13_to_16 = ( rank_2016 - rank_2013))

head(dogs)
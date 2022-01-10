# O transmute ira remover todas as tabelas e deixar
# apenas as tabelas que foram adicionadas por mim mesmo
# caso eu queira deixar uma tabela basta fazer com foi 
# feito com a tabela "bread"
dogs <- dogs %>%
  transmute(breed = breed, avg_height = (height_low_inches + height_high_inches)/2,
         avg_weight = (weight_low_lbs + weight_high_lbs)/2,
        rank_change_13_to_16 = rank_2016 - rank_2013)
        
head(dogs)
# Às vezes, todos os dados que você deseja estão 
# em seu quadro de dados, mas está tudo desorganizado!
# Entre na prática função dplyr dândi arrange()! arrange()
# classificará as linhas de um quadro de dados em ordem
# crescente pela coluna fornecida como argumento.
customers %>%
  arrange(name)

# ordem decrescente
customers %>%
  arrange(desc(age))


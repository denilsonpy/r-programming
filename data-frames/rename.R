# rename() pode aceitar qualquer número de argumentos, 
# em que cada novo nome de coluna é atribuído para substituir 
# um nome de coluna antigo no formato new_column_name = old_column_name. 
# rename() retorna um novo quadro de dados com os nomes das colunas atualizados.

# check column names
original_col_names <- dogs %>%
  colnames()
print(original_col_names)
```

```{r}
# rename data frame columns
dogs <- dogs %>%
  rename(avg_height_inches = avg_height, avg_weight_lbs = avg_weight, popularity_change_13_to_16 = rank_change_13_to_16 )

```

```{r}
# check column names
new_col_names <- dogs %>%
  colnames()
print(new_col_names)
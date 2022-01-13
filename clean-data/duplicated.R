---
title: "Data Cleaning in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(dplyr)
library(tidyr)
```

```{r}
# load students data frame
load("students.Rda")
```

```{r}
# drop id column
students <- students %>%
  select(-id)

head(students)
```

```{r}
# find and count duplicated rows
duplicates <- students %>% 
  duplicated() %>% # duplicated retorna matrix com a informação em boolean da linha duplicada
  table() # table ajuda a visualizar as informações das linhas duplicadas

print(duplicates)
```

```{r}
# remove duplicated rows, keep only unique rows
students <- students %>% 
  distinct() # remove valores duplicados deixando apenas unicos!
```

```{r}
# find and count duplicated rows in updated data frame
updated_duplicates <- students %>%
  duplicated() %>%
  table()
print(updated_duplicates)
```
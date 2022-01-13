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
# view the head of students
head(students)
```

```{r}
# separate the full_name column
# a função separate recebe como primeiro parametro a coluna desejada
# e logo apos uma matrix com os dados no qual ela sera dividida 
# no exemplo separamos os dados de full_name em duas colunas uma 
# chamada first_name e outra chamada last_name, um variavel extra foi
# passada para especificar que qualquer valor a mais deve ser declarado
# como fazendo parte de last_name separamos por " "
students <- students %>%
  separate(full_name, c("first_name", "last_name"), " ", extra ='merge')

head(students)
```
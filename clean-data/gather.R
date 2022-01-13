# essa função transforma os valores no qual achamos melhor separar para 
# obter melhores resultados nas analises como exemplo
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
# original column names
original_col_names <- names(students)
print(original_col_names)
```

```{r}
# gather columns
students <- students %>%
        # colums_1    column_2   new_column_name colums_values_new_colums
  gather('fractions', 'probability', key='exam', value='score')
```

```{r}
# updated column names
gathered_col_names <- names(students)
print(gathered_col_names)
```

```{r}
# unique value counts of exam
exam_counts <- students %>%
  count(exam)
print(exam_counts)
```
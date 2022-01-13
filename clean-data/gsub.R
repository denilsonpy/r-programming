---
title: "Data Cleaning in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(dplyr)
```

```{r}
# load students data frame
load("students.Rda")
```

```{r}
# view head of students
head(students)
```

```{r}
# remove % from score column
# a funcao gsub funciona como o replace
students <- students %>% 
  mutate(score=gsub("\\%", "",score))

head(students)
```

```{r}
# change score column to numeric
# a funcao as.numeric convert um valor para o tipo numerico
students <- students %>%
  mutate(score=as.numeric(score))

head(students)
```
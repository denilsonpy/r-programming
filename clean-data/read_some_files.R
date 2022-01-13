---
title: "Data Cleaning in R"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries
library(readr)
library(dplyr)
```

```{r}
# read a list files with regex
student_files <- list.files(pattern = 'exams_.*csv')
```

```{r message=FALSE}
# read files
df_list <- lapply(student_files, read_csv)
```

```{r}
# concatenate data frames
students <- bind_rows(df_list)
```

```{r}
# number of rows in students
nrow_students <- nrow(students)
```
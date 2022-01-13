---
title: "Intro To GGPlot2"
output: html_notebook
---

```{r message=FALSE, warning=FALSE}
# load libraries and data
library(readr)
library(dplyr)
library(ggplot2)
```

```{r}
# Inspect the mpg builtin dataset
head(mpg)
```

```{r message=FALSE}
#Create a bar chart
# ao definir o eixo x como class automaticamente o ggplot ira atribuir
# a contagem dos valores no eixo y
bar <- ggplot(data=mpg, aes(x=class)) +
  geom_bar(aes(fill=class)) +
  labs(title="Types of Vehicles", subtitle="From fuel economy data for popular car models (1999-2008)")

bar
```
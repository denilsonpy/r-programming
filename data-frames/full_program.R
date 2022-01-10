---
title: "ACLU Child Separations"
output: html_notebook
---

```{r message=FALSE, warning=FALSE, error=TRUE}
# load libraries
library(readr)
library(dplyr)
```

```{r error=TRUE}
# load data
aclu <- read_csv("aclu_separations.csv")
```

```{r error=TRUE}
# inspect data
head(aclu)
summary(aclu)
```

```{r error=TRUE}
# select columns
aclu <- aclu %>%
  select(-addr)
```

```{r error=TRUE}
# view columns
names(aclu)
```

```{r error=TRUE}
# rename columns
aclu <- aclu %>%
  rename(city = program_city, state = program_state, number_children = n, longitude = lon, latitude = lat)

names(aclu)
```

```{r error=TRUE}
# add column
aclu <- aclu %>%
  mutate(border_latitude = 25.83)
```

```{r error=TRUE}
# latitude change
aclu <- aclu %>%
  mutate(lat_change_border = latitude - border_latitude)
```

```{r error=TRUE}
# number of children
further_away <- aclu %>%
  filter(lat_change_border > 15)

head(further_away)
```

```{r error=TRUE}
# state analysis
further_away <- further_away %>%
  arrange(desc(number_children))

chosen_state <- "NY"

chosen_state_separations <- further_away %>%
  filter(state == chosen_state)

head(chosen_state_separations)
```

```{r}
# rename columns
dogs <- dogs %>%
  rename(popularity_2016 = rank_2016,
        popularity_2015 = rank_2015,
        popularity_2014 = rank_2014,
        popularity_2013 = rank_2013)
colnames(dogs)
```

```{r}
# calculate average height, average weight, and change in popularity from 2013 to 2016
dogs <- dogs %>%
  transmute(breed = breed,
            avg_height = (height_low_inches + height_high_inches)/2,
            avg_weight = (weight_low_lbs + weight_high_lbs)/2,
            pop_change_13_to_16 = popularity_2016 - popularity_2013)
head(dogs)
```
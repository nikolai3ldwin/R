library(pander)
library(mosaic)
library(tidyverse)
library(cars)

boxplot(length ~ sex, data=KidsFeet)

KidsFeet %>%
  group_by(sex) %>%
  summarise(min= min(length),
            Q1= quantile(length, 0.25),
            med= median(length),
            Q3= quantile(length, 0.75),
            max= max(length) %>%
              pander())
            
            
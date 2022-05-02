library(mosaic)

speedCounts <- table(cars$speed)
speedCounts

library(mosaic)
birthdays <- table(KidsFeet$sex, KidsFeet$birthmonth)
birthdays

Feet <- filter(KidsFeet, birthmonth %in% c(6,7,8))
Feet

Kids2 <- KidsFeet %>%
  filter(birthyear == 87) %>%
  select(c(name, birthyear, length))
Kids2

cars %>%
  summarise()

sum(is.na(Rent$Price))

Rent2 <- Rent %>% drop_na((Price))
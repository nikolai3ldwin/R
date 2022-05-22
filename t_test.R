library(car)
library(mosaic)
library(plotly)

t.test(KidsFeet$length,
       mu= 28,
       alternative= "two.sided",
       conf.level= 0.95)

qqPlot(KidsFeet$length)

KidsFeet2 <- KidsFeet %>%
  mutate(LWdiff = length - 3 * width)

t.test(KidsFeet$length,
       3*KidsFeet$width,
       mu= 0,
       paired= TRUE,
       alternative= "two.sided",
       conf.level= 0.95)

qqPlot(KidsFeet$length - 3*KidsFeet$width)

t.test(filter(KidsFeet, sex == "B")$length,
       filter(KidsFeet, sex == "G")$length,
       mu= 0, alternative= "two.sided",
       conf.level= 0.95)

qqPlot(filter(KidsFeet, sex == "B")$length)

qqPlot(filter(KidsFeet, sex == "G")$length)

plot_ly(KidsFeet,
        y= ~length,
        x= ~width,
        color= ~sex,
        colors= c("skyblue", "hotpink"),
        type= "box")
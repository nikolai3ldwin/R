library(tidyverse)
library(mosaic)

boxplot(airquality$Temp,
        ylab= "Temperature (F)",
        main= "Distribution of Temperature\nNew York: May - Sept 1973")
stripchart(airquality$Temp,
           pch= 20,
           vertical= TRUE,
           method= "stack",
           add= TRUE)
points(1, mean(airquality$Temp),
       col= "Red",
       add= TRUE)

#New Chart
plot(KidsFeet$length, KidsFeet$width,
     pch= 20,
     xlab= "Foot Length (cm)",
     ylab= "Foot Width (cm)",
     main= "Foot Width vs. Foot Length\n(Positive Correlation)",
     xlim= c(15,30),
     ylim= c(6,10))
abline(v = mean(KidsFeet$length), lty= 2, col= "gray", add= TRUE)
abline(h = mean(KidsFeet$width), lty= 2, col= "gray", add= TRUE)
text(20, 9.2,
     paste("Correlation: ", round(cor(KidsFeet$length, KidsFeet$width), digits= 3)),
           col= "Gray",
           add= TRUE)

#New data plot

KidsFeet %>%
  group_by(sex) %>%
  summarise(avLength = mean(length),
            sdLength = sd(length),
            sampleSize = n())
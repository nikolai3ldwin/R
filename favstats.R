library(car)
library(tidyverse)
library(pander)
library(plotly)
library(mosaic)
library(DT)
library(mtcars)

Rent <- read_csv("../Data/Rent.csv")
view(Rent)

pander(favstats(Rent$Price),
       caption = "This caption is my title")
qqPlot(KidsFeet$length)

plot_ly(Rent,
        x= ~WalkingMinutes,
        y= ~Price,
        color= c("seagreen3"),
        size ~Capacity,
        text= ~paste("Apt:", Apartment,
                     "\n", "Capacity:", Capacity)) %>%
  layout(title= "Female Student Housing Options",
         xaxis= list(title= "Minutes to Campus (Walking)"),
         yaxis= list(title= "Price"))

view(Rent)
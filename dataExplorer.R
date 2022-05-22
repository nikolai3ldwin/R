library(DataExplorer)
library(car)
library(pander)

data_list <- list(KidsFeet, Orange, airquality)

plot_str(data_list)


plot_bar(KidsFeet)
plot_bar(Orange)

pander(introduce(KidsFeet))
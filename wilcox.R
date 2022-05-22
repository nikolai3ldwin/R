library(mosaic)

#
wilcox.test(length ~ sex, data= KidsFeet)


wilcox.test(length ~ sex, data= KidsFeet, alternative= "less")

wilcox.test(length ~ sex, data= KidsFeet, alternative= "greater")
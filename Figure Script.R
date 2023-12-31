#figure_plot

##### Command Line Practice ##################

####loading packages########

library(dplyr)
library(ggplot2)

#Creating the data set

dat <- tibble(x = rnorm(100), y = x + rnorm(100, sd = 0.2))

#Plotting figure

gg1 <- ggplot(dat, aes(x, y)) + 
  geom_point(alpha = 0.2) +
  geom_abline(slope = 1, intercept = 0)

ggsave(gg1, filename = "figure_plot.png")

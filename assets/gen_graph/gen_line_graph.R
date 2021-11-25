rm(list=ls())

# Libraries
# install.packages("ggplot2")
library(ggplot2)

# create data
weight.data <- read.csv(file="data/weight.csv")

# Plot
ggplot(weight.data, aes(x=as.Date(Date), y=Weight)) +
  geom_line()

ggsave("plotimg/weight.jpg", width = 2000, height = 1000, units = "px")

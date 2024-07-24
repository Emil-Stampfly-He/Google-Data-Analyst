library(ggplot2)
data("diamonds")
View(diamonds)

# a quick review of dataset (6 rows)
head(diamonds)
# a quick review of more detialed information
str(diamonds)
# a quick review of column names
colnames(diamonds)

# create a new column based on existing ones
library(tidyverse)
mutate(diamonds,carat_2=carat*100)


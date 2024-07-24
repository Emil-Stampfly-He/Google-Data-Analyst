data("ToothGrowth") # load the data
View(ToothGrowth) # view the data
library(dplyr)
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)
arrange(filtered_tg,len) # arranged by the descending order

# using the nested functions: combine line4-line6
arrange(filter(ToothGrowth, dose == 0.5),len)

# quick bottom for pipe:Ctrl+shift+m
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)

View(filtered_toothgrowth)

filtered_toothg <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len=mean(len,na.rm=T),.group="drop")
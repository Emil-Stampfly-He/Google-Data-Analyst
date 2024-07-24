library(tidyverse)
library(skimr)
library(janitor)

bookings_df <- read.csv("hotel_bookings.csv")
View(bookings_df)
head(bookings_df)
str(bookings_df)
glimpse((bookings_df))
colnames(bookings_df)
skim_without_charts(bookings_df)

trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)

example_df <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_date_month, c("arrival_date_month", "arrival_date_year"), sep = " ")

colnames(example_df)
head(example_df)

example_df_2 <- bookings_df %>% 
  mutate(guest = adults + children + babies)
head(example_df_2)

example_df_3 <- bookings_df %>% 
  summarise(number_canceled = sum(is_canceled), average_lead_time = mean(lead_time))
head(example_df_3)

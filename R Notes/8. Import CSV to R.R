library(tidyverse)
bookings_df <- read_csv("hotel_bookings.csv")

View(bookings_df)
head(bookings_df)
str(bookings_df)
colnames(bookings_df)

# create a new df using existing one
new_df <- select(bookings_df, "adr", adults)
View(new_df)
head(new_df)
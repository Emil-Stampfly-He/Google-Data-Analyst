hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data=hotel_bookings) +
  geom_bar(mapping = aes(x=hotel, fill=market_segment))

ggplot(data=hotel_bookings) +
  geom_bar(mapping = aes(x=hotel)) +
  facet_wrap(~market_segment)

onlineta_city_hotels <- filter(hotel_bookings,
                               (hotel==" " & hotel_bookings$market_segment==" "))

View(onlineta_city_hotels)

# 或者也可以用pipe重新写filter函数
onlineta_city_hotels_2<- hotel_bookings %>% 
  filter(hotel=="City Hotel") %>% 
  filter(market_segment=="Online TA")
View(onlineta_city_hotels_2)

ggplot(data=onlineta_city_hotels_2) +
  geom_point(mapping = aes(x=lead_time, y=children))

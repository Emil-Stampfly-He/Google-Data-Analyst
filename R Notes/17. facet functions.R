# 分类别画图：facet_wrap()
ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
  facet_wrap(~species)

# 分两类画图：facet_grid()
ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
  facet_grid(sex~species)


ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g)) +
  facet_grid(~species)



hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=market_segment)) +
# fill可以让条形图分类展示颜色
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle=45))
# theme让x轴的信息变得可读

ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=market_segment)) +
# fill可以让条形图分类展示颜色
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle=45))

ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=market_segment)) +
# fill可以让条形图分类展示颜色
  facet_grid(~deposit_type~market_segment) +
# 分两类展示deposit&market
  theme(axis.text.x = element_text(angle=90))

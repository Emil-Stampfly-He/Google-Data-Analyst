data(penguins)
View(penguins)

# 1. geom_point的使用
ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color=species, shape=species, size=species)) 
# ggplot()用来建立平面直角坐标系
# + 用来增加图层
# geom_point用来构建散点图(geom_bar则为条形图)
# mapping=aes()用来表明x和y坐标代表什么
# color=species表示每个不同的颜色代表不同的种类
# shape=species表示每个不同的形状代表不同的种类
# shape=species表示每个不同的大小代表不同的种类

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, alpha=species)) 
# alpha=species表示

ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color='purple') 
# 把所有点变成紫色

# 2. 在ggplot上叠加其他geom图层
ggplot(data=penguins) +
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g, linetype=species)) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color=species))

ggplot(data=penguins) +
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# 3. 条形图
ggplot(data=penguins) +
  geom_bar(mapping=aes(x=flipper_length_mm,fill=species))
# y轴默认为count



hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)

ggplot(data=hotel_bookings) +
  geom_point(mapping=aes(x=lead_time,y=children)
             
             ggplot(data=hotel_bookings) +
               geom_point(mapping = aes(x=stays_in_weekend_nights,y=children))
             
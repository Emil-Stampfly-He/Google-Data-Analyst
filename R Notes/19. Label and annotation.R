ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Emil Stampfly") +
  annotate("text", x=220,y=3500, label="The Grentoos are the largest",color='purple',
           fontface="bold",size=4.5, angle=45)

# 若代码段太长
p <-  ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Emil Stampfly") 

p + annotate("text", x=220,y=3500, label="The Grentoos are the largest",color='purple',
             fontface="bold",size=4.5, angle=45)

# ASC
penguins %>% 
  arrange(bill_length_mm)

# DESC
penguins %>% 
  arrange(-bill_length_mm)

penguins %>% 
  group_by(island) %>% 
  # drop null (won't remove the rows from data)
  drop_na() %>% 
  summarise(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(max_bill_length_mm = max(bill_length_mm))

penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarize(max_b1 = max(bill_length_mm), mean_b1 = mean(bill_length_mm))


penguins %>% 
  filter(species == "Adelie")

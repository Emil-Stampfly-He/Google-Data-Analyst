skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

# select only column "species"
penguins %>% 
  select(species)

# every column expect "species"
penguins %>% 
  select(-species)

# change column names
penguins %>% 
  rename(island_new = island)

# change every column names together
# uppercase the column name
rename_with(penguins, toupper)
# lowercase the column name
rename_with(penguins, tolower)

# 规范化数据框的列名，将特殊字符或者空格替换
clean_names(penguins)

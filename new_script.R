# Set-up your script ------------------------------------------------------

# install.packages(c("tidyverse", "gapminder", "pacman")) # uncomment if already installed
pacman::p_load(tidyverse, gapminder)

# Load your Data into R ---------------------------------------------------

data(gapminder)
head(gapminder)


# Clean your Data ---------------------------------------------------------

gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)

gapminder_clean_americas <- gapminder_clean %>%
  filter(continent=="Americas") %>%
  mutate(richpoor=ifelse(gdp_per_cap<5000, "poor","rich"))



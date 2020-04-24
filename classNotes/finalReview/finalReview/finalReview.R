library(tidyverse)

# Practice for data frames ---------------------------------

# Beatles data:
beatles <- tibble(
    firstName   = c("John", "Paul", "Ringo", "George"),
    lastName    = c("Lennon", "McCartney", "Starr", "Harrison"),
    yearOfBirth = c(1940, 1942, 1940, 1943),
    deceased    = c(TRUE, FALSE, FALSE, TRUE),
    band        = 'beatles'
)

# Spice girls data:
spicegirls <- tibble(
    firstName   = c("Melanie", "Melanie", "Emma", "Geri", "Victoria"),
    lastName    = c("Brown", "Chisholm", "Bunton", "Halliwell", "Beckham"),
    spice       = c("Scary", "Sporty", "Baby", "Ginger", "Posh"),
    yearOfBirth = c(1975, 1974, 1976, 1972, 1974),
    deceased    = c(FALSE, FALSE, FALSE, FALSE, FALSE)
)

# Create the bands data frame:
spicegirls <- spicegirls %>%
    select(-spice) %>%
    mutate(band = 'spicegirls')
bands <- bind_rows(spicegirls, beatles)

# Data frames for practice
animals_farm = tibble(
    name           = c("cow", "horse"),
    sound          = c("moo", "neigh"),
    aveWeightLbs   = c(2400, 1500),
    aveLifeSpanYrs = c(20, 25)
)

animals_pet = tibble(
    name           = c("dog", "cat"),
    sound          = c("woof", "meow"),
    aveWeightLbs   = c(40, 8),
    aveLifeSpanYrs = c(10, 12)
)

# Practice for data wrangling & plotting ---------------------------------

birds <- read_csv(file.path('data', 'birds.csv'))
bears <- read_csv(file.path('data', 'bears.csv'))



bands %>% 
    mutate(age = 2019 - yearOfBirth) %>%
    group_by(deceased, band) %>%
    summarise(mean_age = mean(age))
# install.packages("stringr")
# install.packages("dplyr")
# install.packages("ggplot2")
# install.packages("readr")
library(dplyr)
library(stringr)
library(ggplot2)
library(readr)

install.packages('tidyverse')
library(tidyverse)

# Beatles data:
beatles <- tibble(
    firstName   = c("John", "Paul", "Ringo", "George"),
    lastName    = c("Lennon", "McCartney", "Starr", "Harrison"),
    instrument  = c("guitar", "bass", "drums", "guitar"),
    yearOfBirth = c(1940, 1942, 1940, 1943),
    deceased    = c(TRUE, FALSE, FALSE, TRUE)
)

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

# How many rows are in the animals_farm data frame?
nrow(animals_farm)

# How many columns are in the animals_pet data frame?
ncol(animals_pet)

# Create a new data frame, animals, by combining animals_farm and animals_pet.
animals <- bind_rows(animals_farm, animals_pet)

# Create a new column in animals called type and set the values to "farm" or "pet".
animals$type <- c('farm', 'farm', 'pet', 'pet')

# Change the column names of animals to title case.
names(animals) <- str_to_title(names(animals))






# Create a new column, playsGuitar, which is TRUE if the band member 
# plays the guitar and FALSE otherwise.
beatles$playsGuitar <- (beatles$instrument == 'guitar')

# Select the rows for the band members who have four-letter first names.
beatles[(str_length(beatles$firstName)) == 4,]
beatles[c(1,2),]

# Create a new column, fullName, which contains the band member's first 
# and last name separated by a space (e.g. "John Lennon")
beatles$fullName <- str_c(beatles$firstName, beatles$lastName, sep=' ')











# External datasets:

# View all dataframes in the ggplot2 library:
data(package = "ggplot2")

# Import external csv file
pathToData <- file.path('data', 'msleep.csv')
msleep <- read_csv(pathToData)



# Preview the msleep data frames
head(msleep)
tail(msleep)
glimpse(msleep)



pathToData <- file.path('data', 'wildlife_impacts.csv')
df <- read_csv(pathToData)

head(df)
tail(df)
glimpse(df)

# How many unique airports are in the data frame?
unique(df$airport)
length(unique(df$airport))

# What is the earliest and latest observation in the data frame?
min(df$incident_date)
max(df$incident_date)

# What is the lowest and highest cost of any one repair in the data frame?
min(df$cost_repairs_infl_adj)
max(df$cost_repairs_infl_adj)


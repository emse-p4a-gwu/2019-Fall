
# install.packages(dplyr)
# install.packages(ggplot2)
# install.packages(readr)
library(dplyr)
library(stringr)
library(ggplot2)
library(readr)

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

# External datasets:

# View all dataframes in the ggplot2 library:
data(package = "ggplot2")

# Import external csv file
pathToData <- file.path('data', 'msleep.csv')
msleep <- read_csv(pathToData)

# Preview the msleep data frame
head(msleep)
tail(msleep)
glimpse(msleep)

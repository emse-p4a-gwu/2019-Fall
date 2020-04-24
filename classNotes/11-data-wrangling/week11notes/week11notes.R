# install.packages('tidyverse')
library(tidyverse)

# Spice girls data:
spicegirls <- tibble(
    firstName   = c("Melanie", "Melanie", "Emma", "Geri", "Victoria"),
    lastName    = c("Brown", "Chisholm", "Bunton", "Halliwell", "Beckham"),
    spice       = c("Scary", "Sporty", "Baby", "Ginger", "Posh"),
    yearOfBirth = c(1975, 1974, 1976, 1972, 1974),
    deceased    = c(FALSE, FALSE, FALSE, FALSE, FALSE)
)


# Beatles data:
beatles <- tibble(
    firstName   = c("John", "Paul", "Ringo", "George"),
    lastName    = c("Lennon", "McCartney", "Starr", "Harrison"),
    yearOfBirth = c(1940, 1942, 1940, 1943),
    deceased    = c(TRUE, FALSE, FALSE, TRUE),
    band        = 'beatles'
)

# Create the bands data frame:
spicegirls <- spicegirls %>%
    select(-spice) %>%
    mutate(band = 'spicegirls')
bands <- bind_rows(spicegirls, beatles)

# Exporting data
ageSummary <- bands %>%
    mutate(age = 2019 - yearOfBirth) %>%
    group_by(band) %>%
    summarise(
        mean_age = mean(age),
        min_age = min(age),
        max_age = max(age))

# Save the result in your "data" folder:
savePath <- file.path('data', 'ageSummary.csv')
write_csv(ageSummary, savePath)






# Practice: select & filter

pathToData <- file.path('data', 'wildlife_impacts.csv')
df <- read_csv(pathToData)

# Create a new data frame, df_birds, that contains only the variables
# (columns) about the species of bird.
df_birds <- select(df, species, species_id)

# Create a new data frame, dc, that contains only the observations (rows)
# from DC airports.
dc <- filter(df,state == 'DC')

# Create a new data frame, dc_birds_known, that contains only the observations
# (rows) from DC airports and those where the species of bird is known.
dc_birds_known <- filter(df, state == 'DC', str_detect(species, 'Unknown') == FALSE)
dc_birds_known <- filter(dc, str_detect(species, 'Unknown') == FALSE)

# How many known unique species of birds have been involved in accidents at
# DC airports?
length(unique(dc_birds_known$species))




# Practice: select & filter & %>%
pathToData <- file.path('data', 'wildlife_impacts.csv')
df <- read_csv(pathToData)

# Create a new data frame, dc_dawn, that contains only the observations
# (rows) from DC airports that occurred at dawn.
dc_dawn <- df %>%
    filter(state == 'DC') %>%
    filter(time_of_day == 'Dawn')

# Create a new data frame, dc_dawn_birds, that contains only the
# observations (rows) from DC airports that occurred at dawn and
# only the variables (columns) about the species of bird.
dc_dawn_birds <- df %>%
    filter(state == 'DC') %>%
    filter(time_of_day == 'Dawn') %>%
    select(contains('species'))

# Create a new data frame, dc_dawn_birds_known, that contains only the
# observations (rows) from DC airports that occurred at dawn and only
# the variables (columns) about the KNOWN species of bird.
dc_dawn_birds_known <- df %>%
    filter(state == 'DC') %>%
    filter(time_of_day == 'Dawn') %>%
    select(contains('species')) %>%
    filter(str_detect(str_to_lower(species), 'unknown') == FALSE) %>%
    arrange(species)

# How many known unique species of birds have been involved in accidents at DC airports at dawn?

length(unique(dc_dawn_birds_known$species))





# Practice: mutate

pathToData <- file.path('data', 'wildlife_impacts.csv')
df <- read_csv(pathToData)

# height_miles: The height variable converted to miles
# (Hint: there are 5,280 feet in a mile).

# cost_mil: TRUE if the repair costs was greater or equal to $1 million,
# FALSE otherwise.

df <- df %>%
    mutate(
        height_miles = height / 5280,
        cost_mil = if_else(cost_repairs_infl_adj >= 10^6, T, F),
        seasons =
            if_else(incident_month %in% c(3, 4, 5), 'spring',
            if_else(incident_month %in% c(6, 7, 8), 'summer',
            if_else(incident_month %in% c(9, 10, 11), 'fall', 'winter'))))





# Practice: group_by & summarise

pathToData <- file.path('data', 'wildlife_impacts.csv')
df <- read_csv(pathToData)

summaryOfHeights <- df %>%
    filter(!is.na(height)) %>%
    group_by(time_of_day) %>%
    summarise(mean(height))

summaryOfRepairs <- df %>%
    filter(!is.na(cost_repairs_infl_adj)) %>%
    group_by(incident_year) %>%
    summarise(maxCost = max(cost_repairs_infl_adj)) %>%
    arrange(desc(maxCost))

bands %>%
    mutate(startsWithG = str_detect(firstName, '^G')) %>%
    count(band, startsWithG)



# Practice: count

pathToData <- file.path('data', 'wildlife_impacts.csv')
df <- read_csv(pathToData)

# Which month has had the greatest number of reported incidents?
df %>%
    count(incident_month)

# Which year has had the greatest number of reported incidents?
df %>%
    count(incident_year) %>%
    arrange(desc(n))

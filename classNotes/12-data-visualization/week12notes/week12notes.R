library(tidyverse)

birds <- read_csv(file.path('data', 'wildlife_impacts.csv'))
bears <- read_csv(file.path('data', 'bear_killings.csv'))


# Does the annual number of bird impacts appear to be changing over time?

glimpse(birds)

birds %>% 
    group_by(incident_year) %>% 
    summarise(count = n())

annualImpacts <- birds %>% 
    count(incident_year)

plot(annualImpacts$incident_year, annualImpacts$n)




# Which months have the highest and lowest number of bird
# impacts in the dataset?
hist(birds$incident_month, breaks = 12)

# Which aircrafts experience more impacts: 2-engine, 3-engine, or 4-engine?
hist(birds$num_engs)

# At what height do most impacts occur?
hist(birds$height, breaks = 100)
    


ggplot(data = birds, aes(x = cost_repairs_infl_adj, y = height)) +
    geom_point()

plot(birds$cost_repairs_infl_adj, birds$height)


cleanBirds <- birds %>% 
    mutate(phase_of_flt = str_to_lower(phase_of_flt))

ggplot(data = cleanBirds, aes(x = speed, y = height)) +
    geom_point(aes(color = phase_of_flt))



birds %>% 
    mutate(phase_of_flt = str_to_lower(phase_of_flt)) %>%
    ggplot(aes(x = speed, y = height)) +
    geom_point(aes(color = phase_of_flt))


ggplot(data = bears, aes(x = month)) +
    geom_bar(stat='count')

meanAgeAnnual <- bears %>%
    filter(!is.na(age)) %>%
    group_by(year) %>%
    summarise(meanAge = mean(age))

uglybars <- ggplot(data=meanAgeAnnual, aes(x=year, y=meanAge)) +
    geom_bar(stat = 'identity') 
ggsave(filename = file.path('plots', 'uglybars.pdf'),
       plot   = uglybars,
       width  = 6,
       height = 4)


bears %>%
    filter(!is.na(age)) %>%
    group_by(year) %>%
    summarise(meanAge = mean(age)) %>% 
    ggplot(aes(x=year, y=meanAge)) +
    geom_bar(stat = 'identity')

bears %>% 
    count(year, gender) %>% 
    ggplot(aes(x = year, y = n)) +
    geom_bar(stat = 'identity')

ggplot(data = bears, aes(x = year)) +
    geom_bar(aes(fill = gender)) +
    labs(fill = 'Victim gender')


birds %>% 
    filter(! is.na(cost_repairs_infl_adj)) %>% 
    group_by(incident_year) %>% 
    summarise(maxCost = max(cost_repairs_infl_adj)) %>% 
    ggplot(aes(x = incident_year, y = maxCost)) +
    geom_bar(stat='identity') +
    theme_minimal()

ggplot(data = mtcars, aes(x = wt, y = mpg)) +
    geom_point() +
    theme_bw() +
    labs(x = 'Weight', y = 'Fuel Economy (mpg)')

ggplot(data = mtcars, aes(x = hp, y = mpg)) +
    geom_point(aes(color = as.factor(cyl))) +
    theme_bw() +
    labs(x = 'Horsepower', y = 'Fuel Economy (mpg)', 
         color = 'Num. Cylinders')

mtcars %>% 
    group_by(cyl) %>% 
    summarise(meanMpg = mean(mpg)) %>% 
    ggplot(aes(x = as.factor(cyl), y = meanMpg)) +
    geom_bar(stat='identity')



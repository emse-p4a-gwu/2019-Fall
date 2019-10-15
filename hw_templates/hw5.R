# hw5.R
# Name (Last, First): <type name here>
# GW Net ID:          <type GW Net ID here>

# I worked with the following classmates on this assignment:

# 1) Name (Last, First): <type name here>
# 2) Name (Last, First): <type name here>

# Load the dplyr library for wrangling data frames:
library(dplyr)

######################################################################
# Place your solutions here
######################################################################

# --------------------------------------------------------------------
# 1) Load the data [5 points]

# --------------------------------------------------------------------
# 2) Inspect the data [10 points]

# --------------------------------------------------------------------
# 3) Answer questions about the data

# a) [SOLO] ----------------
# How many flights out of NYC airports in 2013 had an arrival delay of two
# or more hours?

# Answer:

# b) [SOLO] ----------------
# How many flights out of NYC airports in 2013 departed in fall semester (
# i.e. the months August - December, inclusive)?

# Answer:

# c) [SOLO] ----------------
# How many flights out of NYC airports in 2013 arrived more than two hours
# late to their destinations, but did not _depart_ an NYC airport late?

# Answer:

# d) [SOLO] ----------------
# How many flights out of NYC airports in 2013 were operated by
# United, American, or Delta airlines?

# Answer:

# e) [SOLO] ----------------
# List the top 3 airlines (by name, not carrier code) that had the highest
# delay time of any one flight leaving a NYC airport in 2013.

# Answer:

# f) [SOLO] ----------------
# How many flights out of NYC airports in 2013 flew to the 3 major DC-area
# airports: Reagan National, Dulles, or BWI?

# Answer:

# g) [SOLO] ----------------
# What is the year manufactured and tail number of the oldest airplane that
# any one airline used in 2013 to fly out of NYC airports, and which airline
# operated that plane?

# Answer:

# h) [COLLABORATIVE] ----------------
# Using the `flights` data frame, compute a new variable `speed` (in miles per
# hour) using the `air_time` and `distance` variables. For the fastest flight
# in the dataset, what was its speed and what were the origin and destination
# airport codes?

# Answer:

# i) [COLLABORATIVE] ----------------
# Using the `flights` data frame, compute a new variable `delta_time` (in
# minutes) that is equal to the amount of time that was either lost or made up
# during the flight. "Lost" time is less than 0 and reflects a flight time
# that was _longer_ than scheduled, while "made up" time is greater than 0 and
# reflects a flight time that was _faster_ than scheduled. For the flight that
# made up the most time during its flight, how much time was made up (in
# minutes) and what were the origin and destination airport codes?

# Answer:

# j) [COLLABORATIVE] ----------------
# Of all the flights in 2013 departing from NYC airports, list the top 3
# destinations (airport names, not airport codes) with the highest mean
# arrival delay.

# Answer:

# k) [COLLABORATIVE] ----------------
# Use the `flights` data frame to create a new summary data frame called
# `dailyDelaySummary` that contains the following variables for each day in
# 2013:
#   - `meanDepDelay`: the mean departure delay (in minutes)
#   - `numDelayedFlights`: the total number of delayed flights
# Save this file in your "data" folder as "dailyDelaySummary.csv"

# l) [COLLABORATIVE] ----------------

# Using the `dailyDelaySummary` data frame that you created in part k),
# answer the following two questions:
#   - Find the day in 2013 with the highest number of delayed flights. On that
#     day, how many flights were delayed, and what was the mean delay time (in
#     minutes)?
#   - Find the day in 2013 with the highest mean departure delay (in minutes).
#     On that day, how many flights were delayed and what was the mean delay
#     time (in minutes)?

# Answer:

# --------------------------------------------------------------------

# Bonus Credit 1) ----------------
# How many flights have a missing departure time? What might these rows
# represent?

# Answer:

# Bonus Credit 2) ----------------
# Which flights (i.e. carrier + flight) departed every day of the year, and
# which airports did they fly to?

# Answer:

# Bonus Credit 3) ----------------
# Use the flights data frame to find which season has the highest average
# flight departure delays. The seasons are defined as the following:
#  - Spring: March, April, May
#  - Summer: June, July, August
#  - Fall: September, October, November
#  - Winter: December, January, February
# What season experiences the largest average delay, and why might that be?
# Hint: Use a "pipeline" of `mutate`, `group_by()` and `summarise()`. Don't
# forget to filter out any `NA` values before summarizing! Also, you may need
# to use the `ifelse()` function, which we have not covered (Googled it!)

# Answer:

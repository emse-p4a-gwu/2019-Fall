library(tidyverse)

# Coins ----------------------------

# "Fair" coin tosses:
coin <- c("heads", "tails")
N <- 10000
tosses <- sample(x = coin, size = N, replace = TRUE)
head(tosses)
# Probability of getting "heads":
sum(tosses == "heads") / N

# Less "fair" coin tosses:
tosses <- sample(x = coin, size = N, replace = TRUE, prob = c(0.4, 0.6))
sum(tosses == "heads") / N


# Dice ----------------------------

# What is the probability of rolling one 6-sided dice 3 times and getting the sequence 1, 3, 5?
dice <- c(1, 2, 3, 4, 5, 6)
N <- 10000
rolls <- tibble(
  roll1 = sample(x = dice, size = N, replace = TRUE),
  roll2 = sample(x = dice, size = N, replace = TRUE),
  roll3 = sample(x = dice, size = N, replace = TRUE))
numObs <- rolls %>%
  filter(roll1 == 1, roll2 == 3, roll3 == 5) %>%
  nrow()
numObs / N

# Actual probability of getting sequence 1, 3, 5:
(1/6)^3


# Practice ----------------------------

# If you flipped a coin 3 times in a row, what is the probability that you'll get three "tails" in a row?

# If you rolled 2 dice, what is the probability that you'll get "snake-eyes" (two 1's)?

# If you rolled 2 dice, what is the probability that you'll get an outcome that sums to 8?

# **Bonus**: What are the odds that five cards drawn from a 52-card deck will sum to a prime number? Set aces to 1 and all "face" cards (Jack, Queen, King) equal to 10. Hint: use `isPrime()` as a helper.

isPrime <- function(n) {
    if (n == 2) { return(TRUE) }
    for (i in seq(2, n-1)) {
        if (n %% i == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}


# Discrete vs. continuous random numbers ----------------------------

# `sample()`: Takes random samples from `x`
sample(x = c(0, 1), size = 10, replace = TRUE)

# `runif()`: Takes random samples of numbers between upper and lower bound
runif(n = 10, min = 0, max = 1)


# Monte Carlo Integration ----------------------------
# Integration = compute the area "under the curve"

# Example: Find the area of $y = x^2$ between $3 < x < 7$

# Make main function plot:
x  <- seq(0, 10, by = 0.01)
df <- data.frame(x = x, y = x^2)
func_plot <- ggplot(data = df) +
    geom_line(aes(x = x, y = y)) +
    scale_x_continuous(breaks = seq(0, 10, 2), limits = c(0, 10)) +
    theme(text = element_text(size=20)) +
    theme_bw() +
    geom_area(data = df %>% filter(x > 3 & x < 7),
        aes(x = x, y = y), alpha = 0.2, fill = 'red')
func_plot

# Simulate points:
N <- 10000
points <- tibble(
    x = runif(N, min = 3, max = 7),
    y = runif(N, min = 0, max = 7^2)) %>%
    mutate(belowCurve = y <= x^2)
head(points)

# Make points plot:
points_plot <- ggplot(data = df) +
    geom_line(aes(x = x, y = y)) +
    scale_x_continuous(breaks = seq(0, 10, 2), limits = c(0, 10)) +
    theme(text = element_text(size=20)) +
    theme_bw() +
    geom_area(data = data.frame(x = c(3, 3, 7, 7), y = c(0, 7^2, 7^2, 0)),
              aes(x = x, y = y), alpha = 0, color = 'black', linetype = 2) +
    geom_point(data = points, aes(x = x, y = y, color=belowCurve), size=0.1) +
    # Change size of points in legend:
    guides(colour = guide_legend(override.aes = list(size=8))) +
    labs(color = 'Below curve')
points_plot

# Area of rectangle:
x <- 7 - 3
y <- 7^2
area_rectangle <- x*y
area_rectangle

# Estimate area under curve by counting points under curve:
points <- points %>%
    summarise(numBelowCurve = sum(belowCurve))
points_ratio <- points$numBelowCurve / N
areaUnderCurve <- area_rectangle * points_ratio
areaUnderCurve

# How did we do? Compute the error:
actualAreaUnderCurve <- (7^3 / 3) - (3^3 / 3)
actualAreaUnderCurve
error <- abs(actualAreaUnderCurve - areaUnderCurve)
error

# Error percent:
100*(error / actualAreaUnderCurve)


# Practice: Monte Carlo pi ----------------------------

# 1. Create a tibble with variables `x` and `y` that each contain 10,000 random points between -1 and 1, representing the (x, y) coordinates to a random point inside a square of side length 2 centered at `(x, y) = (0, 0)`. Hint: use `runif()`

# 2. Create a new variable, `radius`, that is equal to the distance from the center of the square (0, 0) to each (x, y) point.

# 3. Create the variable, `pointInCircle`, that is `TRUE` if the point lies _within_ the circle inscribed in the square, and `FALSE` otherwise.

# 4. Create the scatterplot on the left (don't worry about the precise colors, dimensions, etc.).

# 5. Estimate $\pi$ by multiplying 4 times the ratio of points inside the circle to the total number of points


# Practice: Monte Hall Problem ----------------------------

# In this simulation, the prize is always behind door #1:

# - If you choose door #1, you must KEEP it to win.
# - If you choose door #2 or #3, you must SWAP to win.

# 1. Create the tibble, `choices`, with two variables: `door` contains the first door chosen (`1`, `2`, or `3`); `swap` contains a logical value (`TRUE` or `FALSE`) for whether the contestant chose to swap door. Hint: use `sample()`

# 2. Create a new tibble, `wins`, which contains only the rows from `choices` that resulted in a win.

# 3. Compute the percentage of times the contestant won after swapping doors.

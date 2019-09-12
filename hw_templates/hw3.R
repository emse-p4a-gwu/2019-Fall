# hw3.R
# Name (Last, First): <type name here>
# GW Net ID:          <type GW Net ID here>

# I worked with the following classmates on this assignment:

# 1) Name (Last, First): <type name here>
# 2) Name (Last, First): <type name here>

######################################################################
# Place your solutions here
######################################################################

loopFactorial <- function(n) {
    return(42)
}

vectorFactorial <- function(n) {
    return(42)
}

printStarTriangle <- function(n) {
    return(42)
}

nthHighestValue <- function(n, x) {
    return(42)
}

numDigits <- function(n) {
    return(42)
}

sumOfSquaresOfDigits <- function(n) {
    return(42)
}

isHappyNumber <- function(n) {
    return(42)
}

nthHappyNumber <- function(n) {
    return(42)
}

# Turtle Graphics - no test functions for these, just run them and view the
# output to make sure it's producing the correct graphic

turtleSquare <- function(s) {
    return(42)
}

# Run to test the output
library(TurtleGraphics)
turtle_init()
turtle_do({
    turtleSquare(50)
})

concentricTurtleSquares <- function(spacing = 5) {
    return(42)
}

# Run to test the output
library(TurtleGraphics)
turtle_init()
turtle_do({
    concentricTurtleSquares()
})

turtleCircle <- function(r) {
    return(42)
}

# Run to test the output
library(TurtleGraphics)
turtle_init()
turtle_do({
    turtleCircle(30)
})

# Bonus Credit

# turtleSquareRotated <- function(s, degrees) {
#     return(42)
# }

# # Run to test the output
# library(TurtleGraphics)
# turtle_init()
# turtle_do({
#     turtleSquareRotated(30, 30)
# })

# turtleSquareStar <- function(s, degreeSpacing = 20) {
#     return(42)
# }

# # Run to test the output
# library(TurtleGraphics)
# turtle_init()
# turtle_do({
#     turtleSquareStar(50, 20)
# })

######################################################################
# ignore_rest: The autograder will ignore all code below here
######################################################################

testLoopFactorial <- function() {
    cat("Testing loopFactorial()...")
    stopifnot(loopFactorial(0) == 1)
    stopifnot(loopFactorial(1) == 1)
    stopifnot(loopFactorial(3) == 6)
    stopifnot(loopFactorial(4) == 24)
    stopifnot(loopFactorial(5) == 120)
    cat("Passed!\n")
}

testVectorFactorial <- function() {
    cat("Testing vectorFactorial()...")
    stopifnot(vectorFactorial(0) == 1)
    stopifnot(vectorFactorial(1) == 1)
    stopifnot(vectorFactorial(3) == 6)
    stopifnot(vectorFactorial(4) == 24)
    stopifnot(vectorFactorial(5) == 120)
    cat("Passed!\n")
}

testNthHighestValue <- function() {
    cat("Testing nthHighestValue()...")
    stopifnot(nthHighestValue(1, c(1,3,5)) == 5)
    stopifnot(nthHighestValue(2, c(1,3,5)) == 3)
    stopifnot(nthHighestValue(1, c(3,5,1)) == 5)
    stopifnot(nthHighestValue(3, c(pi,3,2.99)) == 2.99)
    cat("Passed!\n")
}

testNumDigits <- function() {
    cat("Testing numDigits()...")
    stopifnot(numDigits(12345) == 5)
    stopifnot(numDigits(0) == 1)
    stopifnot(numDigits(-111) == 3)
    cat("Passed!\n")
}

testSumOfSquaresOfDigits <- function() {
    cat("Testing sumOfSquaresOfDigits()...")
    stopifnot(sumOfSquaresOfDigits(5) == 25) # 5^2 = 25
    stopifnot(sumOfSquaresOfDigits(12) == 5) # 1^2 + 2^2 = 1+4 = 5
    stopifnot(sumOfSquaresOfDigits(234) == 29) # 2^2 + 3^2 + 4^2 = 4+9+16 = 29
    stopifnot(sumOfSquaresOfDigits(365) == 70) # 3^2 + 6^2 + 5^2 = 9+36+25 = 70
    cat("Passed!\n")
}

testIsHappyNumber <- function() {
    cat("Testing isHappyNumber()...")
    stopifnot(isHappyNumber(-7) == FALSE)
    stopifnot(isHappyNumber(1) == TRUE)
    stopifnot(isHappyNumber(2) == FALSE)
    stopifnot(isHappyNumber(97) == TRUE)
    stopifnot(isHappyNumber(98) == FALSE)
    stopifnot(isHappyNumber(404) == TRUE)
    stopifnot(isHappyNumber(405) == FALSE)
    stopifnot(isHappyNumber(1000) == TRUE)
    cat("Passed!\n")
}

testNthHappyNumber <- function() {
    cat("Testing nthHappyNumber()...")
    stopifnot(nthHappyNumber(1) == 1)
    stopifnot(nthHappyNumber(2) == 7)
    stopifnot(nthHappyNumber(3) == 10)
    stopifnot(nthHappyNumber(4) == 13)
    stopifnot(nthHappyNumber(5) == 19)
    stopifnot(nthHappyNumber(6) == 23)
    stopifnot(nthHappyNumber(7) == 28)
    stopifnot(nthHappyNumber(8) == 31)
    cat("Passed!\n")
}

testAll <- function() {
    testLoopFactorial()
    testVectorFactorial()
    testNthHighestValue()
    testNumDigits()
    testSumOfSquaresOfDigits()
    testIsHappyNumber()
    testNthHappyNumber()
}

testAll()

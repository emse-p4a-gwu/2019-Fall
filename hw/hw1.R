# hw1.R
# Name (Last, First): <type name here>
# GW Net ID:          <type GW Net ID here>

# I worked with the following classmates on this assignment:

# 1) Name (Last, First): <type name here>
# 2) Name (Last, First): <type name here>

######################################################################
# Place your solutions here
######################################################################

kthDigit <- function(x, k) {
    return(42)
}

getTheCents <- function(n) {
    return(42)
}

numberOfPoolBalls <- function(rows) {
    return(42)
}

numberOfPoolBallRows <- function(balls) {
    return(42)
}

isEvenPositiveInt <- function(x) {
    return(42)
}

isPerfectCube <- function(x) {
    return(42)
}

isTriangular <- function(x) {
    return(42)
}

fabricYards <- function(inches) {
    return(42)
}

fabricExcess <- function(inches) {
    return(42)
}

######################################################################
# ignore_rest: The autograder will ignore all code below here
######################################################################

testKthDigit <- function() {
    cat("Testing kthDigit()...")
    stopifnot(kthDigit(789, 0) == 9)
    stopifnot(kthDigit(789, 1) == 8)
    stopifnot(kthDigit(789, 2) == 7)
    stopifnot(kthDigit(789, 3) == 0)
    stopifnot(kthDigit(-789, 0) == 9)
    cat("Passed!")
}

testGetTheCents <- function() {
    cat("Testing kthDigit()...")
    stopifnot(getTheCents(2.45) == 45)
    stopifnot(getTheCents(2.00) == 0)
    stopifnot(getTheCents(42) == 0)
    stopifnot(getTheCents('notANumer') == NULL)
    stopifnot(getTheCents(3.953) == 96)
    cat("Passed!")
}

testNumberOfPoolBalls <- function() {
    cat("Testing numberOfPoolBalls()...")
    stopifnot(numberOfPoolBalls(0) == 0)
    stopifnot(numberOfPoolBalls(1) == 1)
    stopifnot(numberOfPoolBalls(2) == 1+2)
    stopifnot(numberOfPoolBalls(3) == 1+2+3)
    stopifnot(numberOfPoolBalls(10) == 55)
    cat("Passed!")

testNumberOfPoolBallRows <- function() {
    cat("Testing numberOfPoolBallRows()...")
    stopifnot(numberOfPoolBallRows(0) == 0)
    stopifnot(numberOfPoolBallRows(1) == 1)
    stopifnot(numberOfPoolBallRows(2) == 2)
    stopifnot(numberOfPoolBallRows(3) == 2)
    stopifnot(numberOfPoolBallRows(4) == 3)
    stopifnot(numberOfPoolBallRows(6) == 3)
    stopifnot(numberOfPoolBallRows(7) == 4)
    stopifnot(numberOfPoolBallRows(10) == 4)
    stopifnot(numberOfPoolBallRows(11) == 5)
    stopifnot(numberOfPoolBallRows(54) == 10)
    stopifnot(numberOfPoolBallRows(55) == 10)
    stopifnot(numberOfPoolBallRows(56) == 11)
    cat("Passed!")

testIsEvenPositiveInt <- function() {
    cat("Testing isEvenPositiveInt()...")
    stopifnot(isEvenPositiveInt(2) == True)
    stopifnot(isEvenPositiveInt(2040608) == True)
    stopifnot(isEvenPositiveInt(21) == False)
    stopifnot(isEvenPositiveInt(20406081) == False)
    stopifnot(isEvenPositiveInt(0) == False)
    stopifnot(isEvenPositiveInt(-2) == False)
    stopifnot(isEvenPositiveInt(-2040608) == False)
    stopifnot(isEvenPositiveInt("Let's go!") == False)
    stopifnot(isEvenPositiveInt(1.23456) == False)
    stopifnot(isEvenPositiveInt(True) == False)
    cat("Passed!")

testIsPerfectCube <- function() {
    cat("Testing isPerfectCube()...")
    stopifnot(isPerfectCube(0) == True)
    stopifnot(isPerfectCube(1) == True)
    stopifnot(isPerfectCube(-1) == True)
    stopifnot(isPerfectCube(8) == True)
    stopifnot(isPerfectCube(-8) == True)
    stopifnot(isPerfectCube(27) == True)
    stopifnot(isPerfectCube(-27) == True)
    stopifnot(isPerfectCube(16) == False)
    stopifnot(isPerfectCube(-16) == False)
    cat("Passed!")

testIsTriangular <- function() {
    cat("Testing isTriangular()...")
    stopifnot(isTriangular(0) == True)
    stopifnot(isTriangular(1) == True)
    stopifnot(isTriangular(2) == False)
    stopifnot(isTriangular(3) == True)
    stopifnot(isTriangular(4) == False)
    stopifnot(isTriangular(5) == False)
    stopifnot(isTriangular(6) == True)
    stopifnot(isTriangular(54) == False)
    stopifnot(isTriangular(55) == True)
    stopifnot(isTriangular(56) == False)
    stopifnot(isTriangular(-1) == False)
    cat("Passed!")

testFabricYards <- function() {
    cat("Testing fabricYards... ")
    stopifnot(fabricYards(0) == 0)
    stopifnot(fabricYards(1) == 1)
    stopifnot(fabricYards(35) == 1)
    stopifnot(fabricYards(36) == 1)
    stopifnot(fabricYards(37) == 2)
    stopifnot(fabricYards(72) == 2)
    stopifnot(fabricYards(73) == 3)
    stopifnot(fabricYards(108) == 3)
    stopifnot(fabricYards(109) == 4)
    cat("Passed all tests!")

testFabricExcess <- function() {
    cat("Testing fabricExcess... ")
    stopifnot(fabricExcess(0) == 0)
    stopifnot(fabricExcess(1) == 35)
    stopifnot(fabricExcess(35) == 1)
    stopifnot(fabricExcess(36) == 0)
    stopifnot(fabricExcess(37) == 35)
    stopifnot(fabricExcess(72) == 0)
    stopifnot(fabricExcess(73) == 35)
    stopifnot(fabricExcess(108) == 0)
    stopifnot(fabricExcess(109) == 35)
    cat("Passed all tests!")

testAll <- function() {
    testKthDigit()
    testGetTheCents()
    testNumberOfPoolBalls()
    testNumberOfPoolBallRows()
    testIsEvenPositiveInt()
    testIsPerfectCube()
    testIsTriangular()
    testFabricYards()
    testFabricExcess()

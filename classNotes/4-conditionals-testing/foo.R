

pricePrius <- 27600
priceCamry <- 24000
mpgPrius <- 55 
mpgCamry <- 32 
milesPerYear <- 15000 
fuelPrice <- 3 

# First find the price difference 
priceDiff <- pricePrius - priceCamry

# Fuel burn in each car per year 
annualGallonsPrius <- milesPerYear / mpgPrius
annualGallonsCamry <- milesPerYear / mpgCamry
annualFuelSavings <- fuelPrice*(annualGallonsCamry - annualGallonsPrius)
priceDiff / annualFuelSavings




absValue <- function(n) {
    if (n < 0) { n <- -1*n }
    return(n)
}








testIsFactor <- function() {
    cat('Testing isFactor()...')
    stopifnot(isFactor(2, 6) == TRUE)
    stopifnot(isFactor(6, 2) == FALSE)
    stopifnot(isFactor(0, 5) == TRUE)
    stopifnot(isFactor(5, 0) == FALSE)
    cat('Passed!')
}

isFactor <- function(f, n) {
    if (f == 0) { return(TRUE) }
    if (n == 0 ) { return(FALSE) }
    return(n %% f == 0)
}

testIsFactor()


testIsMultiple <- function() {
    cat('Testing isMultiple()...')
    stopifnot(isMultiple(2, 6) == FALSE)
    stopifnot(isMultiple(6, 2) == TRUE)
    stopifnot(isMultiple(0, 5) == FALSE)
    stopifnot(isMultiple(5, 0) == TRUE)
    cat('Passed!')
}


isMultiple <- function(m, n) {
    return(isFactor(n, m))
}

testIsMultiple()



if (! is.numeric(n)) {return(FALSE)}





testGetInRange <- function() {
    cat('Testing getInRange()...')
    stopifnot(getInRange(1, 3, 5) == 3)
    stopifnot(getInRange(4, 3, 5) == 4)
    stopifnot(getInRange(6, 3, 5) == 5)
    stopifnot(getInRange(6, 5, 3) == 5)
    cat('Passed!')
}

getInRange <- function(x, bound1, bound2) {
    lower <- min(bound1, bound2)
    upper <- max(bound1, bound2)
    if (x < lower) { x <- lower}
    if (x > upper) {x <- upper} 
    return(x)
}

getInRange <- function(x, bound1, bound2) {
    lower <- min(bound1, bound2)
    upper <- max(bound1, bound2)
    return(min(max(x, lower), upper))
}

testGetInRange()

sumFromMToN <- function(m, n) {
    total <- 0 
    for (i in seq(m, n)) {
        total <- total + i
    }
    return(total)
}

sumToN <- function(n) {
    return(n*(n+1)/2)
}
sumFromMToN <- function(m, n) {
    return(sumToN(n) - sumToN(m-1))
}



sumFromMToN(5, 10) == (5+6+7+8+9+10)
sumFromMToN(1, 1) == 1




sumOfOddsFromMToN <- function(m, n) {
    total <- 0 
    for (i in seq(m, n)) {
        if (i %% 2 == 1) {
            total <- total + i
        }
    }
    return(total)
}

sumOfOddsFromMToN <- function(m, n) {
    if (m %% 2 == 0) { m <- m + 1}
    total <- 0 
    for (i in seq(m, n, 2)) {
        total <- total + i
    }
    return(total)
}


sumOfOddsFromMToN(4, 10) == (5 + 7 + 9)
sumOfOddsFromMToN(5, 10) == (5 + 7 + 9)
sumOfOddsFromMToN(5, 9) == (5 + 7 + 9)




















isMultipleOf4Or7 <- function(n) {
    if (! is.numeric(n)) { return(FALSE) }
    if (n <= 0) { return(FALSE) }
    result <- (n %% 4 == 0) | (n %% 7 == 0)
    return(result)
}

isMultipleOf4Or7(0) == FALSE
isMultipleOf4Or7(1) == FALSE
isMultipleOf4Or7(-7) == FALSE
isMultipleOf4Or7(4) == TRUE
isMultipleOf4Or7(7) == TRUE
isMultipleOf4Or7(28) == TRUE
isMultipleOf4Or7('notANumer') == FALSE








nthMultipleOf4Or7 <- function(n) {
    counter <- 1
    guess <- 0
    while (counter <= n) {
        guess <- guess + 1
        if (isMultipleOf4Or7(guess)) {
            counter = counter + 1
        }
    }
    return(guess)
}

nthMultipleOf4Or7(1) == 4
nthMultipleOf4Or7(2) == 7
nthMultipleOf4Or7(3) == 8
nthMultipleOf4Or7(4) == 12
nthMultipleOf4Or7(5) == 14
nthMultipleOf4Or7(6) == 16
nthMultipleOf4Or7(10) == 28









isPrime <- function(n) {
    if (n == 2) { return(TRUE) }
    for (i in seq(2, n-1)) {
        if (n %% i == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}

isPrime(1) == FALSE
isPrime(2) == TRUE
isPrime(7) == TRUE
isPrime(13) == TRUE
isPrime(14) == FALSE


nthPrime <- function(n) {
    counter <- 1
    guess <- 0
    while (counter <= n) {
        guess <- guess + 1
        if (isPrime(guess)) {
            counter = counter + 1
        }
    }
    return(guess)
}

nthPrime(1) == 2
nthPrime(2) == 3
nthPrime(3) == 5
nthPrime(4) == 7
nthPrime(7) == 17





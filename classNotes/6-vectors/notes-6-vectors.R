isPrime <- function(n) {
    if (n <= 1) { return(FALSE) }
    if (n == 2) { return(TRUE) }
    for (i in seq(2, n-1)) {
        if (n %% i == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}

isPrime <- function(n) {
    if (n <= 1) { return(FALSE) }
    if (n == 2) { return(TRUE) }
    # Check if all values can divide evenly into n
    v <- seq(2, n-1)
    if (any(n %% v == 0)) {
        return(FALSE)
    }
    return(TRUE)
}





reverse <- function(x) {
    n <- length(x)
    return(x[seq(n, 1, -1)])
}

reverse(c(5, 1, 3)) == c(3, 1, 5)
reverse(c('a', 'b', 'c')) == c('c', 'b', 'a')
reverse(c(FALSE, TRUE, TRUE)) == c(TRUE, TRUE, FALSE)
reverse(seq(10)) == seq(10, 1, -1)


middleValue <- function(a) {
    n <- length(a)
    m <- ceiling(n / 2)
    if (n %% 2 == 0) {
        return((a[m]+ a[m+1]) / 2)
    } else {
        return(a[m])
    }
}

middleValue(c(0,0,0)) == 0
middleValue(c(1,2,3)) == 2
middleValue(c(4,5,6,7,8)) == 6
middleValue(c(5,3,8,4)) == mean(c(3,8))
middleValue(c(4,5,6,7)) == mean(c(5,6))






dotProduct <- function(a, b) {
    la <- length(a)
    lb <- length(b)
    if (lb < la) {
        a <- a[1:lb]
    } else if (la < lb) {
        b <- b[1:la]
    }
    return(sum(a * b))
}

dotProduct(c(1,2,3), c(4,5,6)) == 32
dotProduct(c(1,2), c(4,5,6)) == 14
dotProduct(c(2,3,4), c(-7,1,9)) == 25
dotProduct(c(0,0,0), c(-7,1,9)) == 0


# Loop solution
alternatingSum <- function(a) {
    sum <- 0
    for (i in 1:length(a)) {
        if ((i %% 2) == 1) {
            sum = sum + a[i]
        } else {
            sum = sum - a[i]
        }
    }
    return(sum)
}


# No loop solution (one way to do it)
alternatingSum <- function(a) {
    ones <- rep(c(1, -1), length(a))
    ones <- ones[1:length(a)]
    return(sum(ones*a))
}


alternatingSum(c(5,3,8,4)) == (5 - 3 + 8 - 4)
alternatingSum(c(1,2,3)) == (1 - 2 + 3)
alternatingSum(c(0,0,0)) == 0
alternatingSum(c(-7,5,3)) == (-7 - 5 + 3)














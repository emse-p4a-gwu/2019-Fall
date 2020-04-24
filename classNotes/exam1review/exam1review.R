

f <- function() {
  cat('aaasdf', 3, 'talk', TRUE)  
}

x <- seq(10)
x[i]




isEvenNumber <- function(n) {
  if (! is.numeric(n)) { return(FALSE) }
  if (n != as.integer(n)) { return(FALSE) }
  return((n %% 2) == 0)
}

isEvenNumber(42) == TRUE
isEvenNumber(43) == FALSE
isEvenNumber('not a number') == FALSE





almostEqual <- function(d1, d2, epsilon) {
  return(abs(d1-d2) <= epsilon)
}


nthEvenNumber <- function(n) {
  count <- 0
  i <- 1
  while (count < n) {
    if (i %% 2 == 0) {
      count <- count + 1
    }
    i <- i + 1
  }
  return(i-1)
}



reverse <- function(x) {
  return(x[seq(length(x), 1)])
}

reverse(c(5, 1, 3)) == c(3, 1, 5)
reverse(c('a', 'b', 'c')) == c('c', 'b', 'a')
reverse(c(FALSE, TRUE, TRUE)) == c(TRUE, TRUE, FALSE)
reverse(seq(10)) == seq(10, 1, -1)



















almostEqual <- function(d1, d2) {
  epsilon = 0.00001
  return(abs(d1-d2) <= epsilon)
}









count <- 0
i <- 1
while (i <= 5) {
  
  if (i %% 2 == 0) {
    count <- count + 1
  }
  i <- i + 1
}


a <- c(1, 2, 3)
b <- c(-1, 2,-3)
a == b
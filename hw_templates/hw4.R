# hw4.R
# Name (Last, First): <type name here>
# GW Net ID:          <type GW Net ID here>

# I worked with the following classmates on this assignment:

# 1) Name (Last, First): <type name here>
# 2) Name (Last, First): <type name here>

######################################################################
# Place your solutions here
######################################################################

vowelCount <- function(s) {
    return(42)
}

strToLower <- function(s) {
    return(42)
}

getMiddleCharacter <- function(s) {
    return(42)
}

rotateStringLeft <- function(s, k) {
    return(42)
}

vectorToEnglishList <- function(s, k) {
    return(42)
}

isDigit <- function(s) {
    return(42)
}

getTheGerunds <- function(sentence) {
    return(42)
}

interleave <- function(s1, s2) {
    return(42)
}

sameChars <- function(s1, s2) {
    return(42)
}

# Bonus Credit

# hasBalancedParentheses <- function(s) {
#     return(42)
# }

# largestNumberInText <- function(text) {
#     return(42)
# }


######################################################################
# ignore_rest: The autograder will ignore all code below here
######################################################################

testVowelCount <- function() {
    cat("Testing vowelCount()...")
    stopifnot(vowelCount("Abc def!!! a? yzyzyz!") == 3)
    stopifnot(vowelCount("aAaAb") == 4)
    stopifnot(vowelCount("bzzy") == 0)
    cat("Passed!\n")
}

testStrToLower <- function() {
    cat("Testing strToLower()...")
    stopifnot(strToLower("ABCDE") == "abcde")
    stopifnot(strToLower("A Walk In The Park") == "a walk in the park")
    cat("Passed!\n")
}

testGetMiddleCharacter <- function() {
    cat("Testing getMiddleCharacter()...")
    stopifnot(getMiddleCharacter("abcde") == "c")
    stopifnot(getMiddleCharacter("one") == "n")
    stopifnot(getMiddleCharacter("it") == "it")
    stopifnot(getMiddleCharacter("feet") == "ee")
    stopifnot(getMiddleCharacter("fe et") == " ")
    stopifnot(getMiddleCharacter("alongishstring") == "sh")
    cat("Passed!\n")
}

testRotateStringLeft <- function() {
    cat("Testing rotateStringLeft()...")
    stopifnot(rotateStringLeft("iknowkungfu", 2) == "nowkungfuik")
    stopifnot(rotateStringLeft("iknowkungfu", 7) == "ngfuiknowku")
    stopifnot(rotateStringLeft("iknowkungfu", 11) == "iknowkungfu")
    stopifnot(rotateStringLeft("iknowkungfu", 12) == "knowkungfui")
    cat("Passed!\n")
}

testVectorToEnglishList <- function() {
    cat("Testing vectorToEnglishList()...")
    stopifnot(vectorToEnglishList(c("1", "2", "3")) == "1, 2, and 3")
    stopifnot(vectorToEnglishList(c("1", "2")) == "1 and 2")
    stopifnot(vectorToEnglishList(c("1")) == "1")
    stopifnot(vectorToEnglishList("") == "")
    stopifnot(vectorToEnglishList(c(1, 2, 3)) == "1, 2, and 3")
    stopifnot(vectorToEnglishList(c("apple", "pumpkin", "spice", "latte")) ==
                  "apple, pumpkin, spice, and latte")
    cat("Passed!\n")
}

testIsDigit <- function() {
    cat("Testing isDigit()...")
    stopifnot(isDigit("123") == TRUE)
    stopifnot(isDigit("") == FALSE)
    stopifnot(isDigit("123N") == FALSE)
    stopifnot(isDigit("123?") == FALSE)
    cat("Passed!\n")
}

testGetTheGerunds <- function() {
    cat("Testing getTheGerunds()...")
    stopifnot(getTheGerunds("I like hiking and swimming") == c(
        "hiking", "swimming"))
    stopifnot(is.null(getTheGerunds("I like to run")))
    stopifnot(is.null(getTheGerunds("")))
    stopifnot(getTheGerunds("Climbing and running are great") == c(
        "Climbing", "running"))
    cat("Passed!\n")
}

testInterleave <- function() {
    cat("Testing interleave()...")
    stopifnot(interleave("pto", "yhn") == 'python')
    stopifnot(interleave('a#', 'cD!f2') == "ac#D!f2")
    stopifnot(interleave('1234', '123444888') == "1122334444888")
    stopifnot(interleave('123444888', '1234') == "1122334444888")
    cat("Passed!\n")
}

testSameChars <- function() {
    cat("Testing sameChars()...")
    stopifnot(sameChars('abc', 'cba') == TRUE)
    stopifnot(sameChars('abc', 'ABC') == FALSE)
    stopifnot(sameChars('', '') == TRUE)
    stopifnot(sameChars('123', '123') == TRUE)
    cat("Passed!\n")
}

testHasBalancedParentheses <- function() {
    cat("Testing hasBalancedParentheses()...")
    stopifnot(hasBalancedParentheses("( ( ( ) ( ) ) ( ) )") == TRUE)
    stopifnot(hasBalancedParentheses("( )") == TRUE)
    stopifnot(hasBalancedParentheses("( ) )") == FALSE)
    stopifnot(hasBalancedParentheses("( ) ) (") == FALSE)
    stopifnot(hasBalancedParentheses(") ( ) ( )") == FALSE)
    cat("Passed!\n")
}

testLargestNumberInText <- function() {
    cat("Testing largestNumberInText()...")
    stopifnot(largestNumberInText("I saw 3 dogs, 17 cats, and 14 cows!") == 17)
    stopifnot(is.null(largestNumberInText("One person ate two hot dogs!")))
    stopifnot(largestNumberInText("I saw 1 dog!") == 1)
    stopifnot(largestNumberInText("Winning numbers are 7, 42, and 23") == 42)
    cat("Passed!\n")
}

testAll <- function() {
    testVowelCount()
    testStrToLower()
    testGetMiddleCharacter()
    testRotateStringLeft()
    testVectorToEnglishList()
    testIsDigit()
    testGetTheGerunds()
    testInterleave()
    testSameChars()
    if ('hasBalancedParentheses' %in% ls()) {
        # Only test this if attempted
        testHasBalancedParentheses()
    }
    if ('largestNumberInText' %in% ls()) {
        # Only test this if attempted
        testLargestNumberInText()
    }
}

testAll()

# hw4.R
# Name (Last, First): <type name here>
# GW Net ID:          <type GW Net ID here>

# I worked with the following classmates on this assignment:

# 1) Name (Last, First): <type name here>
# 2) Name (Last, First): <type name here>

######################################################################
# Place your solutions here
######################################################################

reverseString <- function(s) {
    return(42)
}

isPalindrome <- function(s) {
    return(42)
}

sortString <- function(s) {
    return(42)
}

vowelCount <- function(s) {
    return(42)
}

rotateStringLeft <- function(s, k) {
    return(42)
}

letterCount <- function(s) {
    return(42)
}

areAnagrams <- function(s1, s2) {
    return(42)
}

isDigit <- function(s) {
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

testReverseString <- function() {
    cat("Testing reverseString()...")
    stopifnot(reverseString("abcde") == "edcba")
    stopifnot(reverseString("") == "")
    stopifnot(reverseString("aWordWithCaps") == "spaChtiWdroWa")
    stopifnot(reverseString("") == "")
    cat("Passed!\n")
}

testIsPalindrome <- function() {
    cat("Testing isPalindrome()...")
    stopifnot(isPalindrome("abcba") == TRUE)
    stopifnot(isPalindrome("abcb") == FALSE)
    stopifnot(isPalindrome("321123") == TRUE)
    cat("Passed!\n")
}

testSortString <- function() {
    cat("Testing sortString()...")
    stopifnot(sortString("cba") == "abc")
    stopifnot(sortString("abedhg") == "abdegh")
    stopifnot(sortString("AbacBc") == "aAbBcc")
    cat("Passed!\n")
}

testVowelCount <- function() {
    cat("Testing vowelCount()...")
    stopifnot(vowelCount("Abc def!!! a? yzyzyz!") == 3)
    stopifnot(vowelCount("aAaAb") == 4)
    stopifnot(vowelCount("bzzy") == 0)
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

testLetterCount <- function() {
    cat("Testing letterCount()...")
    stopifnot(identical(letterCount("cbaA")[1:3], c(a=2, b=1, c=1)))
    stopifnot(identical(letterCount("CCBbaAa")[1:3], c(a=3, b=2, c=2)))
    cat("Passed!\n")
}

testAreAnagrams <- function() {
    cat("Testing areAnagrams()...")
    stopifnot(areAnagrams("", "") == TRUE)
    stopifnot(areAnagrams("abCdabCd", "abcdabcd") == TRUE)
    stopifnot(areAnagrams("abcdaBcD", "AAbbcddc") == TRUE)
    stopifnot(areAnagrams("abcdaabcd", "aabbcddcb") == FALSE)
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
    cat("Passed!\n")
}

testAll <- function() {
    testReverseString()
    testIsPalindrome()
    testSortString()
    testVowelCount()
    testRotateStringLeft()
    testLetterCount()
    testAreAnagrams()
    testIsDigit()
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

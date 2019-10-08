

x <- 'thisIsGoodPractice'

x_lower <- str_to_lower(x)
x_upper <- str_to_upper(x)

# 'thisIsGood'
str_sub(x, 1, 10)

# 'practice'
str_sub(x_lower, 11, str_length(x_lower))

# 'GOOD'
str_sub(x_upper, 7, 10)

# 'thisIsGoodPracticethisIsGoodPractice'
str_dup(x, 2)

# 'GOODGOODGOOD'
xGOOD <- str_sub(x_upper, 7, 10)
str_dup(xGOOD, 3)

# 'thisthisthis'
xthis <- str_sub(x, 1, 4)
str_dup(xthis, 3 )






x <- 'this_is_good_practice'
y <- c('hello', 'world')

# "hello world"
hw <- str_c(y, collapse = " ")

# "***hello world***"
str_pad(hw, pad = "*", side = "both", width = 17)

# c("this", "is", "good", "practice")
x
xVector <- str_split(x, "_")[[1]]
xVector

# "this is good practice"
xSentence <- str_c(xVector, collapse = " ")
xSentence

# "hello world, this is good practice"
str_c(hw, xSentence, sep = ', ')




x <- c('babble', 'scrabblebabble')
str_split(x, 'bb')

s <- 'babbleScrabbleApple'


s <- str_to_lower(s)
chars <- str_split(s, "")[[1]] # Split the string into characters
return(str_sort(unique(chars)))






# How many fruit have the string "rr" in it?
sum(str_detect(fruit, 'rr'))

# Which fruit end with string "fruit"?
fruit[str_detect(fruit, 'fruit$')]

# Which fruit contain more than one "o" character?
fruitOcount <- str_count(fruit, 'o')
multiOindices <- fruitOcount > 1
fruit[multiOindices]




reverseString <- function(s) {
    if (s == "") {return(s)} # Special case
    chars <- str_split(s, '')[[1]]
    reversedChars <- rev(chars)
    return(str_c(reversedChars, collapse = ''))
}

reverseString("aWordWithCaps") == "spaChtiWdroWa"
reverseString("abcde") == "edcba"
reverseString("") == ""

isPalindrome <- function(s) {
    return(s == reverseString(s))
}

isPalindrome("abcba") == TRUE
isPalindrome("abcb") == FALSE
isPalindrome("321123") == TRUE
isPalindrome("") == TRUE



sortString <- function(s) {
    chars <- str_split(s, '')[[1]]
    return(str_c(str_sort(chars), collapse = ''))
}

sortString("cba") == "abc"
sortString("abedhg") == "abdegh"
sortString("AbacBc") == "aAbBcc"


areAnagrams <- function(s1, s2) {
    s1 <- str_to_lower(s1)
    s2 <- str_to_lower(s2)
    return(sortString(s1) == sortString(s2))
}

areAnagrams("", "") == TRUE
areAnagrams("TomMarvoloRiddle", "IAmLordVoldemort") == TRUE
areAnagrams("aabbccdd", "bbccddee") == FALSE

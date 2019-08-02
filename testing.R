# Script for testing 

setwd('/Users/jhelvy/gh/EMSE-6574/2019-Fall')

rmarkdown::render('00_editing/functions.Rmd')
rmarkdown::render('P3-functions.Rmd')

rmarkdown::render_site()

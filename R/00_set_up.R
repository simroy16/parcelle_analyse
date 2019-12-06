# clean environment
rm(list = ls())

#CRAN packages vector
cran_packages <- c(
  "drake",
  "ggplot2",
  "stringr",
  "fishualize",
  "dplyr",
  "taxize",
  "tidyr",
  "readr",
  "tidyverse",
  "forcats",
  "shiny",
  "mapview"
)

n_i_p <- cran_packages[!(cran_packages %in% installed.packages())]  #n_i_p : not_in_packages

lapply(n_i_p, install.packages, dependencies = TRUE)

lapply(cran_packages, function(x){                                  #install packages
  library(x, character.only = TRUE, quietly = TRUE)
})

rm(n_i_p, cran_packages)

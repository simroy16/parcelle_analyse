source("R/00_set_up.R")

# Loading data
parcelle_file <- "parcelle.csv"
flore_file <- "flore.csv"
path_file <- "data"
parcelle_raw <- read.csv(file.path(path_file,parcelle_file), h=T, row.names = 1)
parcelle_raw <- as_tibble(parcelle_raw)
flore_raw <- read.csv(file.path(path_file,flore_file), h=T, sep = ";")
flore_raw <- as_tibble(flore_raw)
rm(flore_file, parcelle_file, path_file)



                         
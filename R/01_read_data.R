
# Loading data
parcelle_file <- "parcelle.csv"
flore_file <- "flore.csv"
path_file <- "data"
parcelle_raw <- read_csv(file.path(path_file,parcelle_file))
flore_raw <- read_delim(file.path(path_file,flore_file), delim = ";")





                         
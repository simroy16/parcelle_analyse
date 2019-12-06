source("R/02_cleaning_data.R")

# pivoting species
flore_pivoted <- flore %>% 
  pivot_longer(cols = -one_of("annee", "parcelle_id"), names_to = "species", values_to = "index")

# merge table parcelle and flore
parcelle_flore <- right_join(flore_pivoted, parcelle, by = c("parcelle_id" = "code_parcelle.x"))

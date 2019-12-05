
source("R/01_read_data.R")

# delete first column
parcelle_raw <- parcelle_raw[,-1]


# cleaning parcelle data

parcelle <- parcelle_raw[,c("ID_Parcelle", "region", "code_parcelle.x", "plante_reference", "coord_x", "coord_y", 
                            "climat", "typo_pays_principale",
                            "topographie", "altitude", "pourcent_pente", "surface", 
                            "code_parc", "pct_mo", "pct_ph", "texture_sol", "pct_sable", "pct_argile", 
                            "pct_limon", "pct_caillou", "pct_calcaire", "type_bordure", "annee_releve", 
                            "largeur_bordure")]

# split first column of flore_raw



source("R/01_read_data.R")


# cleaning parcelle data
parcelle <- parcelle_raw[,c("ID_Parcelle", "region", "code_parcelle.x", "plante_reference", "coord_x", "coord_y", 
                            "climat", "typo_pays_principale",
                            "topographie", "altitude", "pourcent_pente", "surface", 
                            "code_parc", "pct_mo", "pct_ph", "texture_sol", "pct_sable", "pct_argile", 
                            "pct_limon", "pct_caillou", "pct_calcaire", "type_bordure", "annee_releve", 
                            "largeur_bordure")]


# split first column of flore_raw
annee <- vector()
parcelle_id <- vector()

for(l in 1: length(flore_raw$IDy)) {
  annee <- c(annee, substring(flore_raw$IDy[l], first = nchar(as.character(flore_raw$IDy[l]))-3))
  parcelle_id <- c(parcelle_id, substr(flore_raw$IDy[l], stop = nchar(as.character(flore_raw$IDy[l]))-5, start = 0))
}
flore_raw$annee <- annee
flore_raw$parcelle_id <- parcelle_id

flore_raw$IDy <- NULL
flore <- flore_raw
rm(flore_raw, parcelle_raw, l, annee, parcelle_id)

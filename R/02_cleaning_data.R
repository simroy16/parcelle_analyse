
source("R/01_read_data.R")


# cleaning parcelle data
parcelle <- parcelle_raw[,c("ID_Parcelle", "region", "code_parcelle.x", "plante_reference", "coord_x", "coord_y", 
                            "climat", "typo_pays_principale",
                            "topographie", "altitude", "surface", 
                            "code_parc", "pct_mo", "pct_ph", "texture_sol", "annee_releve")]
parcelle[parcelle == ""] <- NA
parcelle <- na.omit(parcelle)


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

# split first column of pratique
annee <- vector()

for(l in 1: length(pratique_raw$IDy)) {
  annee <- c(annee, substring(pratique_raw$IDy[l], first = nchar(as.character(pratique_raw$IDy[l]))-3))
}
pratique_raw$annee <- annee

pratique_raw$IDy <- NULL
pratique <- pratique_raw

rm(flore_raw, parcelle_raw, l, annee, parcelle_id, pratique_raw)


source("R/01_read_data.R")

# delete first column
parcelle_raw <- parcelle_raw[,-1]

# reformat encoding problem
test <- gsub("[<e9>]", "e", parcelle_raw$plante_reference)

str(parcelle_raw)

# split first column of flore_raw
toto <- colnames(parcelle_raw)
dput(toto)
c("ID_Parcelle", "region", "code_parcelle.x", "plante_reference", "coord_x", "coord_y", 
  "climat", "typo_pays_principale",
  "topographie", "altitude", "pourcent_pente", "surface", 
  "code_parc", "arbo_250", "bois_250", "cult_250", "artif_250", 
  "haie_250", "land_250", "leg_fleur_250", "prairie_250", "surf_eau_250", 
  "verger_250", "vigne_250", "inconnu_250", "SHAPE_MN_250", "SHAPE_MD_250", 
  "SHDI_250", "arbo_500", "bois_500", "cult_500", "artif_500", 
  "haie_500", "land_500", "leg_fleur_500", "prairie_500", "surf_eau_500", 
  "verger_500", "vigne_500", "inconnu_500", "SHAPE_MN_500", "SHAPE_MD_500", 
  "SHDI_500", "code_parcelle.y", "pct_mo", "pct_ph", "texture_sol", "pct_sable", "pct_argile", 
  "pct_limon", "pct_caillou", "pct_calcaire", "type_bordure", "annee_releve", 
  "largeur_bordure")

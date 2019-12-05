
source("R/01_read_data.R")

# delete first column
parcelle_raw <- parcelle_raw[,-1]

# reformat encoding problem
test <- gsub("[<e9>]", "e", parcelle_raw$plante_reference)

str(parcelle_raw)

# split first column of flore_raw
toto <- colnames(parcelle_raw)
dput(toto)
c("ID_Parcelle", "region", "code_parcelle.x", "plante_reference", 
  "commune", "code_postal", "coord_x", "coord_y", "parcelle_active", 
  "nom_parcelle", "lieu_dit", "climat", "typo_pays_principale", 
  "bassin_prod__principal", "typo_pays_secondaire", "bassin_prod__secondaire", 
  "topographie", "altitude", "pourcent_pente", "surface", "plan_eau", 
  "exposition", "orientation_vent", "enclave", "corridor", "drain", 
  "commentaire_parcelle", "orientation_rang_vigne", "annee_plantation_vigne", 
  "ecart_rang_vige", "precedent_cultural_vigne", "desifection_vigne", 
  "fumigation_vigne", "devitalisation_cep_vigne", "arrachage_avec_defonc_vigne", 
  "arrachage_sans_defonc_vigne", "apport_fumure_vigne", "nature_fumure_vigne", 
  "tonnage_vigne", "fractionnement_vigne", "commentaire_vigne", 
  "derniere_modif_parcelle_par", "derniere_modif_parcelle_le", 
  "derniere_modif_donnees_agro_par", "derniere_modif_donnees_agro_le", 
  "derniere_modif_pratiques_par", "derniere_modif_pratiques_le", 
  "code_parc", "arbo_250", "bois_250", "cult_250", "artif_250", 
  "haie_250", "land_250", "leg_fleur_250", "prairie_250", "surf_eau_250", 
  "verger_250", "vigne_250", "inconnu_250", "SHAPE_MN_250", "SHAPE_MD_250", 
  "SHDI_250", "arbo_500", "bois_500", "cult_500", "artif_500", 
  "haie_500", "land_500", "leg_fleur_500", "prairie_500", "surf_eau_500", 
  "verger_500", "vigne_500", "inconnu_500", "SHAPE_MN_500", "SHAPE_MD_500", 
  "SHDI_500", "code_parcelle.y", "X_Lamb93", "Y_Lamb93", "Y_WGS84", 
  "X_WGS84", "pct_mo", "pct_ph", "texture_sol", "pct_sable", "pct_argile", 
  "pct_limon", "pct_caillou", "pct_calcaire", "type_bordure", "annee_releve", 
  "largeur_bordure", "position_bordure", "enherbement_bordure", 
  "gestionnaire_bordure")

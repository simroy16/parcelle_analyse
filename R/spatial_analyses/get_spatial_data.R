source(file = "R/0_set_up.R")

getwd()
parcelle <- read.table(file.path("data","parcelle.csv"), sep = ",", stringsAsFactors = FALSE, header = TRUE) #chemin relatif à partir du projet

flore <- read.table(file.path("data","flore.csv"), sep = ";", stringsAsFactors = FALSE, header = TRUE)


coord <- subset.data.frame(parcelle, select = c("coord_x", "coord_y", "code_parcelle.x"))

parcelle1 = sapply(c(coord_x[], coord_y), names(code_parcelle.x))


#boucle for

parcelle_st_points <- list()

for (i in 1:dim(coord)[1]) {
  parcelle_st_points[[i]] <- sf::st_point(c(coord$coord_x[i], coord$coord_y[i]))
}

names(parcelle_st_points) <- coord$code_parcelle.x

#version lapply

parcelle_st_points <- lapply(1:dim(coord)[1], function(i){
  
  sf::st_point(c(coord$coord_x[i], coord$coord_y[i]))
  
})

names(parcelle_st_points) <- coord$code_parcelle.x

#version parallelle mclapply
library(parallel)
parcelle_st_points <- mclapply(1:dim(coord)[1], function(i){
  
  sf::st_point(c(coord$coord_x[i], coord$coord_y[i]))
  
}, mc.cores = 3)

names(parcelle_st_points) <- coord$code_parcelle.x

#select parcel
sf::st_layers("nom.shp")
parcelle_rpg <- sf::st_read(dsn = "data/nom.shp", layer="nom")

parcelle_kept <- subset(parcelle_rpg, sf::st_contains(parcelle_st_points,parcelle_rpg))



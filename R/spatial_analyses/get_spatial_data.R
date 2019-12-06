source("R/02_cleaning_data.R")

# On selectionne dans parcelles les variables interessantes et les coordonnees 
parcelle_plot <- subset.data.frame(parcelle, select = c("coord_x", "coord_y", "code_parcelle.x", "plante_reference"))

# Transformation de parcelle_plot en object spatial 
parcelle_sf <- sf::st_as_sf(
  x      = parcelle_plot,
  coords = c("coord_x", "coord_y"),
  crs    = 4326
)

parcelle_sf %>% head(6)


# En dessous : optimisation de boucle for en lapply

# #boucle for
# 
# parcelle_st_points <- list()
# 
# for (i in 1:dim(coord)[1]) {
#   parcelle_st_points[[i]] <- sf::st_point(c(coord$coord_x[i], coord$coord_y[i]))
# }
# 
# names(parcelle_st_points) <- coord$code_parcelle.x


# #version lapply
# 
# parcelle_st_points <- lapply(1:dim(coord)[1], function(i){
#   
#   sf::st_point(c(coord$coord_x[i], coord$coord_y[i]))
#   
# })
# 
# names(parcelle_st_points) <- coord$code_parcelle.x


# #version parallelle mclapply
# library(parallel)
# parcelle_st_points <- mclapply(1:dim(coord)[1], function(i){
#   
#   sf::st_point(c(coord$coord_x[i], coord$coord_y[i]))
#   
# }, mc.cores = 3)
# 
# names(parcelle_st_points) <- coord$code_parcelle.x
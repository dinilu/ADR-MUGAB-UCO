library(tidyverse)
# install.packages("KnowBR")
data("Beetles", package="KnowBR")

bioclim <- "Z://Data/Worldclim/wc2.1_2.5m_bio/" |> 
  list.files(full.names = TRUE) |> 
  terra::rast()

names(bioclim) <- names(bioclim) |> 
  str_remove("wc2.1_2.5m_")

bioclim_dat <- bioclim |> terra::extract(as.matrix(Beetles[,c("Longitude", "Latitude")]))

beetles <- cbind(Beetles, bioclim_dat)

openxlsx::write.xlsx(beetles, "data/Tema 3/beetles.xlsx")



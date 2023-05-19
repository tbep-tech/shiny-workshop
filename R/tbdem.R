library(tidyverse)
library(terra)
library(here)
library(raster)

fl <- paste0(tempdir(), '/dem.RData')
download.file('https://github.com/tbep-tech/seagrass-analysis/raw/main/data/dem.RData', destfile = fl)
load(file = fl)

library(terra)

# change projection and downsample
dem <- dem %>%
  rast %>%
  project(y = 'EPSG:6443') %>%
  aggregate(fact = 10)

# convert to matrix format
vals <- values(dem, mat = F)
crds <- crds(dem, na.rm = F)
demmat <- data.frame(crds, vals) %>%
  spread(x, vals) %>%
  dplyr::select(-y) %>%
  as.matrix

save(demmat, file = here('data/demmat.RData'))

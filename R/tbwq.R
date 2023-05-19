library(tbeptools)
library(tidyverse)
library(here)

tbwqdat <- epcdata %>%
  filter(yr == 2022 & mo == 7)  %>%
  select(lat = Latitude, lon = Longitude, station = epchc_station, chla)

write.csv(tbwqdat, file = here('data/tbwqdat.csv'), row.names = F)

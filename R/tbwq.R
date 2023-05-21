library(tbeptools)
library(tidyverse)
library(here)

tbwqdat <- epcdata %>%
  filter(yr == 2021)  %>%
  select(lat = Latitude, lon = Longitude, bay_segment, station = epchc_station, mo, chla)

write.csv(tbwqdat, file = here('data/tbwqdat.csv'), row.names = F)

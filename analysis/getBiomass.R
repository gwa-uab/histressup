
#setwd("/mnt/chromeos/GoogleDrive/SharedDrives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")
setwd("g:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")

library(tidyverse)

biomass <-
  read.csv(file = '../data/bioCalcOutput3.csv', fileEncoding = 'UTF-8-BOM')

biomass <- biomass %>% 
  rename(dbh = DBH)

sppLookup <-
  read.csv(file = '../data/species_lookup.csv', fileEncoding = 'UTF-8-BOM')

fmu_twp_ecozone <-
  read.csv(file = '../data/FMU_TWP_ECOZONE.csv', fileEncoding = 'UTF-8-BOM')

load("../data/conifProps.RData")
load("../data/decidProps.RData")

fte <- fmu_twp_ecozone %>% 
  select(TRM,FMU_NAME,ECOZONE) %>% 
  rename(FMU = FMU_NAME) %>% 
  rename(Ecozone = ECOZONE)

conifProps <- left_join(conifProps,fte)
decidProps <- left_join(decidProps,fte)

conifProps <- conifProps %>% 
  mutate(dbh = round(dbh,digits = 1))

decidProps <- decidProps %>% 
  mutate(dbh = round(dbh,digits = 1))

t <- biomass %>% 
  mutate(max_species = tolower(paste(Genus,Species,sep = "_"))) %>% 
  filter(!is.na(stem_wood)) %>% 
  mutate(dbh = round(dbh,digits = 1))

t <- left_join(t,sppLookup)

tC <- left_join(conifProps,t)
tC <- tC %>%
  filter(!is.na(TRM)) %>%
  mutate(residue = cStems / 1000 * (foliage + branches + cTopBarkProp * stem_bark +
                                 cTopWoodProp * stem_wood)) %>% 
  mutate(CD = "con")  %>% 
  rename(stems = cStems) %>% 
  rename(vol = cVol) %>%
  select(TRM,FMU,Ecozone,sp,vol,stems,residue)

tD <- left_join(decidProps,t)
tD <- tD %>% 
  filter(!is.na(TRM)) %>% 
  mutate(residue = dStems / 1000 * (foliage + branches + dTopBarkProp * stem_bark +
                                        dTopWoodProp * stem_wood)) %>% 
  mutate(CD = "dec") %>% 
  rename(stems = dStems) %>% 
  rename(vol = dVol)%>%
  select(TRM,FMU,Ecozone,sp,vol,stems,residue)

all <- rbind(tC,tD)

write.csv(tC,"../data/tC.csv",row.names = FALSE, quote = FALSE)


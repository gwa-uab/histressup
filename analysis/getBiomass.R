
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
  filter(FTEAREA > 0.001) %>% 
  select(TRM,FMU_NAME,ECOZONE) %>% 
  rename(FMU = FMU_NAME) %>% 
  rename(Ecozone = ECOZONE)

fte <- unique(fte)

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
tC <- unique(tC)
tC <- tC %>%
  filter(!is.na(TRM)) %>%
  mutate(residue = cStems / 1000 * (foliage + branches + cTopBarkProp * stem_bark +
                                 cTopWoodProp * stem_wood)) %>% 
  mutate(CD = "con")  %>% 
  rename(stems = cStems) %>% 
  rename(vol = cVol) %>%
  select(TRM,FMU,Ecozone,CD,sp,vol,stems,residue)

tC$vol[is.na(tC$vol)] <- 0
tC$stems[is.na(tC$stems)] <- 0
tC$residue[is.na(tC$residue)] <- 0
tC$Ecozone[is.na(tC$Ecozone)] <- 0

tD <- left_join(decidProps,t)
tD < unique(tD)
tD <- tD %>% 
  filter(!is.na(TRM)) %>% 
  mutate(residue = dStems / 1000 * (foliage + branches + dTopBarkProp * stem_bark +
                                        dTopWoodProp * stem_wood)) %>% 
  mutate(CD = "dec") %>% 
  rename(stems = dStems) %>% 
  rename(vol = dVol)%>%
  select(TRM,FMU,Ecozone,CD,sp,vol,stems,residue)

tD$vol[is.na(tD$vol)] <- 0
tD$stems[is.na(tD$stems)] <- 0
tD$residue[is.na(tD$residue)] <- 0
tD$Ecozone[is.na(tD$Ecozone)] <- 0

all <- rbind(tC,tD)
all$residue <- all$residue * 0.624 # 0.624 is from Peltola (2011)

residue_by_TFE <- all %>% 
  filter(Ecozone > 0) %>% 
  select(TRM,FMU,Ecozone,CD,residue) %>% 
  pivot_wider(names_from = CD, values_from = residue)

residue_by_TFE <- residue_by_TFE %>% 
  mutate(res_total = con + dec) %>%  
  rename(res_con = con) %>% 
  rename(res_dec = dec) %>% 
  filter(res_total > 0.001)

save(residue_by_TFE, file = "../data/residue_by_TFE.RData")

write.csv(residue_by_TFE,file = "../data/residue_by_TFE.csv")

load("../data/fte.RData")

fte <- fte %>% 
  select(TRM,FMU,Ecozone,fteprop)

fte_residue <- left_join(residue_by_TFE,fte)

fte_residue <- fte_residue %>% 
  mutate(con_new = res_con * fteprop) %>%
  mutate(dec_new = res_dec * fteprop) %>%
  mutate(total_new = res_total * fteprop) %>%
  select(TRM,con_new,dec_new,total_new) %>%
  rename(res_con = con_new) %>% 
  rename(res_dec = dec_new) %>% 
  rename(res_total = total_new) 
  
attach(fte_residue)

biomass_by_trm <- aggregate(fte_residue,by=list(TRM), FUN=sum)

biomass_by_trm <- biomass_by_trm %>% 
  select(-TRM) %>% 
  rename(TRM = Group.1)

save(biomass_by_trm,file = "../data/biomass_by_trm.RData")



  
  
  




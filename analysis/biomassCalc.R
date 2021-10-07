
#setwd("/mnt/chromeos/GoogleDrive/SharedDrives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")
setwd("g:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")

library(tidyverse)

load("../data/conifProps.RData")
load("../data/decidProps.RData")
fte <- read.csv(file = '../data/FMU_TWP_ECOZONE.csv')
fte <- fte %>% 
  rename(FMU = FMU_NAME) %>% 
  rename(Ecozone = ECOZONE)

sppLookup <- read.csv(file = '../data/species_lookup.csv')

c <- conifProps %>% 
  select(-cVol,-cStems,-cTopWoodProp,-cTopBarkProp)

#barplot(table(conifProps$sp))

d <- decidProps %>% 
  select(-dVol,-dStems,-dTopWoodProp,-dTopBarkProp)

cd <- rbind(c,d)

t <- left_join(cd,fte)
t <- left_join(t,sppLookup)
t <- t %>% 
  filter(!is.na(TRM)) %>% 
  filter(!is.na(Ecozone)) %>% 
  mutate(DBH = round(dbh,digits = 1)) %>% 
  mutate(Height = round(ht,digits = 1)) %>% 
  mutate(Province = "AB") %>% 
  mutate(Tree_num = 99) %>% 
  select(Tree_num,Province,Ecozone,Genus,Species,Variety,DBH,Height) %>% 
  filter(!is.na(Genus))

t <- distinct(t)

write.csv(t,"../data/bioCalcInput3.csv",row.names = FALSE, quote = FALSE)


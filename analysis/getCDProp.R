
#setwd("/mnt/chromeos/GoogleDrive/SharedDrives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")
setwd("g:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")


library(tidyverse)

CDProp <-
  read.csv(file = '../data/species_proportions_full.csv', fileEncoding = 'UTF-8-BOM')

CDProp <- CDProp %>%
  mutate(dProp = popu_tre) %>%
  mutate(cProp = abie_bal + abie_las + pice_eng + pice_gla + pice_mar + 
           pinu_ban + pinu_con + pseu_men + pinu_spp) %>%
  mutate(tProp = dProp + cProp) %>%
  mutate(cProp = cProp / tProp) %>%
  mutate(dProp = dProp / tProp) %>%
  filter(tProp > 0.99) %>%
  select(TRM, cProp, dProp)

CDProp

save(CDProp,file="../data/CDProp.RData")

head(CDProp)


#setwd("/mnt/chromeos/GoogleDrive/SharedDrives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")
setwd("g:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")

library(tidyverse)

residual_ratios <-
  read.csv(file = '../data/residual_ratios.csv', fileEncoding = 'UTF-8-BOM')
residual_ratios$prop_of_137 <- residual_ratios$merch_ib_vol / residual_ratios$merch_ib_vol137
residual_ratios <- rename(residual_ratios,topd = top_d)
residual_ratios <- rename(residual_ratios,stumpd = stump_d)
residual_ratios <- rename(residual_ratios,stumpht = stump_ht)
residual_ratios <- rename(residual_ratios,merch_len = min_len)
residual_ratios <- rename(residual_ratios,sp = species)
save(residual_ratios,file="../data/residual_ratios.RData")

twp_merch_vol <-
  read.csv(file = '../data/township_merchantable_volume.csv', fileEncoding = 'UTF-8-BOM')

load("../data/util_piece_fmu_twp_species.RData")

t <- left_join(util_piece_fmu_twp_species,residual_ratios,
               by = c("sp","stumpht","stumpd","topd","merch_len","piece_size"))

load("../data/CDProp.RData")

t <- left_join(t,CDProp)

twp_merch_vol <- twp_merch_vol %>% select(TRM, mean_merch_volume)


t <- left_join(t,twp_merch_vol)

t <- t %>%
  mutate(util_std_volume = mean_merch_volume / prop_of_137 * 2.77) 

tConif <- t %>% filter(CD == "Conif")
tDecid <- t %>% filter(CD == "Decid")

conifProps <- tConif %>% mutate(cVol = util_std_volume * cProp) %>% 
  mutate(cStems = cVol / piece_size ) %>%
  mutate(cTopWoodProp = top_ib_prop) %>%
  mutate(cTopBarkProp = top_bark_prop)%>%
  select("TRM","FMU","sp","dbh","ht","stumpd","topd","stumpht","merch_len",
         "cVol","cStems","cTopWoodProp","cTopBarkProp")

decidProps <- tDecid %>% mutate(dVol = util_std_volume * dProp) %>% 
  mutate(dStems = dVol / piece_size )%>%
  mutate(dTopWoodProp = top_ib_prop) %>%
  mutate(dTopBarkProp = top_bark_prop) %>% 
  select("TRM","FMU","sp","dbh","ht","stumpd","topd","stumpht","merch_len",
         "dVol","dStems","dTopWoodProp","dTopBarkProp")

save(conifProps,file = "../data/conifProps.RData")
save(decidProps,file = "../data/decidProps.RData")

library(tidyverse)
setwd("g:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")

load("../data/cum.odmt.RData")

contours <- cum.odmt %>% 
  select(TRM,location,cycleTime,year,residue.cumsum) %>% 
  mutate(diff200 = abs(residue.cumsum - 200000)) %>% 
  mutate(diff400 = abs(residue.cumsum - 400000)) %>% 
  mutate(diff800 = abs(residue.cumsum - 800000)) 

cycle200 <- contours %>%
  group_by(location,year) %>% 
  slice_min(diff200) %>% 
  select(location,year,cycleTime) %>% 
  rename(cycleTime200 = cycleTime) 
 
cycle400 <- contours %>%
  group_by(location,year) %>% 
  slice_min(diff400) %>% 
  select(location,year,cycleTime) %>% 
  rename(cycleTime400 = cycleTime)

cycle800 <- contours %>%
  group_by(location,year) %>% 
  slice_min(diff800) %>% 
  select(location,year,cycleTime) %>% 
  rename(cycleTime800 = cycleTime) 
  

t <- left_join(cycle200,cycle400)
contours <- left_join(t,cycle800)
save(contours,file="../data/contours.RData")
write.csv(contours,file="../data/contours.csv",row.names = FALSE)
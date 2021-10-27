setwd("g:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")

t <- read.csv(file = '../data/harvest_township_stats_melt_area.csv')
t <- t %>% filter(year == 2009) %>% filter(harvest_proportion >= 0.000001)
write.csv(t,file = '../data/harvest_township_stats_melt_area_2009.csv')
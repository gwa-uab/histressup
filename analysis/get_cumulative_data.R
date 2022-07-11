setwd("G:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")
#setwd("/mnt/g/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")
#setwd("/mnt/chromeos/GoogleDrive/SharedDrives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")
library(tidyverse)
library(ggthemes)
library(scales)
library(gt)
library(quantmod)
library(bookdown)


load(file="../data/cum.odmt.RData")

head(cum.odmt)

write.csv(cum.odmt,file="../cum_odmt.csv", row.names = FALSE)
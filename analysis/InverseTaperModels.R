
#setwd("/mnt/chromeos/GoogleDrive/SharedDrives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")
setwd("g:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/analysis")


library(tidyverse)





taperCoefficients <-
  read.csv(file = '../data/taperCoefficients.csv', fileEncoding = 'UTF-8-BOM')
taperCoefficients

load("../data/dbhCalcInput.RData")

dbhCalcInput <- dbhCalcInput %>%
  filter(!is.na(max_species))  %>%
  mutate(
    species = recode(
      max_species,
      `pice_gla` = "Sw",
      `pice_mar` = "Sb",
      `pice_eng` = "Se",
      `pinu_con` = "Pl",
      `pinu_ban` = "Pj",
      `pinu_spp` = "Px",
      `popu_tre` = "Aw",
      `abie_bal` = "Fb",
      `abie_las` = "Fa",
      `pseu_men` = "Fd",
      `lari_lar` = "Lt"
    )
  )

dbhCalcInput

t <- left_join(dbhCalcInput, taperCoefficients, by = "species")
t <- t %>%
  select(-max_species,-uStumpHt, -uStumpD, -uTopD, -uMinlen, -sppgrp)

f <- file("../data/residual_ratios.csv","w")

writeLines(sprintf("species,stump_ht,stump_d,top_d,min_len,piece_size,dbh,ht,total_ob_vol,total_ib_vol,total_bark_vol,merch_ob_vol,merch_ib_vol,top_ib_vol,top_ob_vol,top_bark_vol,top_ib_prop,top_bark_prop,merch_ib_vol137 "),f,sep="\n")

for (irow in 1:nrow(t))
{
  b0 <- t[irow, ]$b0
  b1 <- t[irow, ]$b1
  b2 <- t[irow, ]$b2
  db0 <- t[irow, ]$db0
  db1 <- t[irow, ]$db1
  stumpht <- t[irow, ]$stumpht / 100
  stumpd <- t[irow, ]$stumpd
  topD <- t[irow, ]$topd
  minloglength <- t[irow, ]$merch_len
  piece_size <- t[irow, ]$piece_size
  species <- t[irow,]$species
  
  mindbh <- 15
  maxdbh <- 30
  
  lower <- mindbh
  upper <- maxdbh
  guess <- 22.5
  tolerance <- 0.0005
  
  obArea = function(h) {
    r <- taper(h, dbh, b0, b1, b2)
    r <- r / 200
    area <- pi * r ^ 2
    return(area)
  }
  
  ibArea = function(h) {
    r <- taper(h, dbh, b0, b1, b2)
    #  r <- max(0,(r - db0)/db1)
    r <- (r - db0) / db1
    r <- max(0, r / 200)
    area <- pi * r ^ 2
    return(area)
  }
  
  count <- 0
  repeat {
    # do something
    count <- count + 1
    dbh <- guess
    dbhib <- (dbh - db0) / db1
    
    height = function(dbh, b0, b1) {
      ht <- b0 * dbh ^ b1
      return(ht)
    }
    
    ht <- height(dbh, b0, b1)
    dbhib
    ht
    
    taper = function(h, dbh, b0, b1, b2) {
      ht <- height(dbh, b0, b1)
      num <- ht - h
      den <- ht - 1.3
      d <- sqrt(dbh ^ 2 * (h / 1.3) ^ (2 - b2) * (num / den))
      return(d)
    }
    
    taperTop = function(h, dbh, topD, b0, b1, b2) {
      ht <- height(dbh, b0, b1)
      num <- ht - h
      den <- ht - 1.3
      toast <-
        sqrt(dbh ^ 2 * (h / 1.3) ^ (2 - b2) * (num / den)) - topD
      return(toast)
    }
    
    ht <- height(dbh, b0, b1)
    
    merchht <-
      uniroot(
        taperTop,
        dbh = dbh,
        topD = topD,
        b0 = b0,
        b1 = b1,
        b2 = b2,
        lower = 0,
        upper = ht
      )$root
    loglength <- merchht - stumpht
    
    
    
    obVolume <-
      integrate(obArea, lower = stumpht, upper = merchht)
    
    totalOBVolume <-
      integrate(obArea, lower = 0, upper = ht)
    
    totalIBVolume <-
      integrate(Vectorize(ibArea), lower = 0, upper = ht)
    
    totalBarkVolume <- totalOBVolume$value - totalIBVolume$value
    
    obVol <- if (loglength < minloglength) {
      0
    } else {
      obVolume$value
    }
    
    ibVolume <-
      integrate(Vectorize(ibArea), lower = stumpht, upper = merchht)
    
    
    
    ibVol <- if (loglength < minloglength) {
      0
    } else {
      ibVolume$value
    }
    
    
    merchVol <- ibVol
    ibVol <- if (loglength < minloglength) {
      0
    } else {
      ibVolume$value
    }
    
    merchht137 <-
      uniroot(
        taperTop,
        dbh = dbh,
        topD = 7,
        b0 = b0,
        b1 = b1,
        b2 = b2,
        lower = 0,
        upper = ht
      )$root
    loglength <- merchht - stumpht
    
    ibVol <- if (loglength < minloglength) {
      0
    } else {
      ibVolume$value
    }
    
    ibVolume137 <-
      integrate(Vectorize(ibArea), lower = 0.3, upper = merchht137)
    
    
    
    ibVol137 <- if (loglength < 4.88) {
      0
    } else {
      ibVolume137$value
    }
    
    stemBarkVolume <- obVol - ibVol
    topVolume <-
      integrate(Vectorize(ibArea), merchht, upper = ht)
    topObVol <- integrate(Vectorize(obArea), merchht, upper = ht)
    topBarkVolume <- topObVol$value - topVolume$value
    
    topVol <- topVolume$value
    top2merchRatio <- topVol / ibVol
    
    
    topBarkRatio <- topBarkVolume / totalBarkVolume
    # totalIBVolume
    topVolRatio <- topVolume$value / totalIBVolume$value
    
    # topVolume
    #
    # merchht
    # loglength
    # obVol
    # top2merchRatio
    # ibVol
    
    # exit if the condition is met
    if (abs(piece_size - ibVol) <= tolerance)
      break
    if (ibVol > piece_size) {
      upper <- guess
    } else {
      lower <- guess
    }
    guess <- (upper + lower) / 2
    
  }
  
  
  top_ib_prop <- topVol/totalIBVolume$value
  top_bark_prop <- topBarkVolume/totalBarkVolume
  
  
  calculated_dbh <- guess
  writeLines(sprintf("%2s,%3i,%3i,%3i,%5.2f,%6.3f,%5.1f,%5.1f,%1.3g,%1.3g,%1.3g,%1.3g,%1.3g,%1.3g,%1.3g,%1.3g,%1.3g,%1.3g,%1.3g",
                species,stumpht*100,stumpd,topD,minloglength,piece_size,calculated_dbh,ht,
                totalOBVolume$value,totalIBVolume$value,totalBarkVolume,obVol,ibVol,
                topVol,topObVol$value,topBarkVolume,top_ib_prop,top_bark_prop,ibVol137),f,sep="\n")
  irow
}

close(f)

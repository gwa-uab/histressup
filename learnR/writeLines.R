setwd("g:/Shared drives/FES_Data_Sharing_Forestry/Manuscripts/histressupp/learnR")
f <- file("output.txt","w") #open file for writing, seems to be necessary
                            #to append lines.

for (i in 1:10){
  for (j in 1:5){
  writeLines(sprintf("this is line %i by %i", i, j),f,sep="\n")
  }
}

load("../data/dbhCalcInput.RData")

close(f)
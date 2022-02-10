
library(tidyverse)
library(writexl)
library(psych)

idade <- c(16,31,27,13,43,39,23,36,9,31)
sexo <- c(1,0,0,0,0,0,1,0,1,1)
procedimento <-  round(runif(10,100000,200000))

dat_ <-  data.frame(idade,sexo)

str(dat_)

DRG <- NULL

for(i in 1:length(dat_$idade)){
  if(dat_$idade[i]<20 & dat_$sexo[i]==1) {
    DRG[i] <- "DRG1"
  }
  else if(dat_$idade[i]<20 & dat_$sexo[i]==0) {
    DRG[i] <- "DRG2"
  }
  else if(dat_$idade[i]>20 & dat_$sexo[i]==1) {
    DRG[i] <- "DRG3"
  }
  if(dat_$idade[i]>20 & dat_$sexo[i]==0) {
    DRG[i] <- "DRG4"
    }
}

dat_$DRG <- DRG

dat_ %>%  write_xlsx("data.teste.xlsx")

DRG




matches <- list(c(2,1),c(5,2),c(6,3))
for (match in matches){
  if (match[1] > match[2]){
    print("Win")
    break
  } else {
    print("Lose")
  }
}

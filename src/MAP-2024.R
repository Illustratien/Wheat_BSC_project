
# library -----------------------------------------------------------------
install.packages("readxl")
install.packages('rio', dependencies = TRUE, repos='http://cran.rstudio.com/')
install.packages("tidyvers")
install.packages("plyr")
install.packages("readr")
install.packages("fs")
install.packages("ggplot2")
library(ggplot2) 
library(tidyr)
library(fs)
library(dplyr)
library(readxl)
library(rio)

# reading files into r ----------------------------------------------------
#use getwd() to see what directory i was at. changed it to the one i needed
#now i am specifying two file.paths to early and late swoing date, 36 and 38 

getwd()

#36
file.paths_36<- fs::dir_ls("C:/Users/ErenM/Desktop/Statistik R/Studienprojekt/
                           IMMER BENUTZEN/Wheat_BSC_project/data_Eren/36")

#line 22 does not work anymore after changing the files from one sup folder-
#to hihher tier folder
dir.create(tempdir("C:/Users/ErenM/Desktop/Statistik R/Studienprojekt/
                            IMMER BENUTZEN/Wheat_BSC_project/data_Eren/36"))
file.paths_36 <- fs::dir_ls("C:/Users/ErenM/Desktop/Statistik R/Studienprojekt/
                            IMMER BENUTZEN/Wheat_BSC_project/data_Eren/36")
file.paths_36
#38
file.paths_38 <- fs::dir_ls("C:/Users/ErenM/Desktop/Statistik R/Studienprojekt/
                            IMMER BENUTZEN/Wheat_BSC_project/data_Eren/38")
file.paths_38

#making a loop to have the data read from different worksheets on excel

file_contents_36 <-list()


for (i in seq_along(file.paths_36)) {
  file_contents_36[[i]]<-read.csv(
    file = file.paths_36[[i]]
  )
  
}

# Überprüfe Berechtigungen
file.access("C:/Users/ErenM/Desktop/Statistik R/Studienprojekt/IMMER BENUTZEN/Wheat_BSC_project/data_Eren/36/1", 2) 

# Lösche temporäre Dateien
unlink(tempdir(), recursive = TRUE)

file_contents_36<-setNames(file_contents_36,file.paths_36)

data_36<- read.csv("./data_Eren/36")

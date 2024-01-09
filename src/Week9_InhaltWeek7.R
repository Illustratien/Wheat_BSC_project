install.packages('dplyr')
library(dplyr)
glimpse(df)
str(df)
data<-read.csv("./data/climate.csv")
data
glimpse(data)
str(data)
data$Termal_sum_<-rowSums(data[,c("DailyMean_Temperature")])
data$row_sum <- rowSums(data[ , c(1,3)], na.rm=TRUE)
glimpse(data)
Thermal_sum<-data%>%
  group_by("DFG_year","sowing_date")
Thermal_sum
Thermal_sum%>%mutate()
list(Thermal_sum)
###by_cyl %>% summarise(
##disp = mean(disp),
##hp = mean(hp)
##das verwenden aber mit mutate tauschen
data
glimpse("DFG_year")
data["DFG_year"&&"sowing_date",]

climate<-read.csv("./data/climate.csv")
climate %>% 
  dplyr::filter(DFG_year=="DFG2019") %>% 
  group_by(y,m) %>% 
  summarise()

climate %>% 
  dplyr::filter(DFG_year=="DFG2019") %>% 
  dplyr::select(y,m) %>% 
  dplyr::distinct()
ear_sum<-read.csv("./data/ear_summarized.csv")
ear_sum
glimpse(ear_sum)

#das unten verwenden bsp
ear_sum%>%
  group_by(nitrogen,appl,timeid) %>% 
  summarise()

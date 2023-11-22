# input is vector
library(dplyr)
c(1,4) %>% 
  lapply(.,FUN=function(x){x+3})
# input is list
list(2,4,c(1,4)) %>% 
  lapply(.,FUN=function(x){x+3})
# input has differnt type
list(2,4,c(1,4),"8") %>% 
  lapply(.,FUN=function(x){x+3})

# create a dataframe 
df <- data.frame(
  time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,3,1),
  temp=c(20,15,13),
  thermal_time=cumsum(c(20,15,13))
)
data.frame(
  time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,3,1),
  temp=c(20,15),
  thermal_time=cumsum(c(20,15,13))
)
# another way
df <- data.frame(time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,3,1)) 
df$temp=c(20,15,13)
df$thermal_time=cumsum(df$temp)

# third method
library(dplyr)
df <- data.frame(time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,3,1)) %>% 
  mutate(temp=c(20,15,13), 
         thermal_time=cumsum(temp))
#challange week 2 df
df

vectthermaltime<-df$"thermal_time"
vectthermaltime
vectthermaltime
df[time(),]
str(2023-04-17)
str(vec)
"2023-04-17"==df[,1]
df["2023-04-17"==df[,1],2]
#[reihe,zeile]

library(dplyr)
df <- data.frame(time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,3,1),
                 temp=c(20,15,13), 
                 thermal_time=cumsum(c(20,15,13)))
df %>% dplyr::glimpse() 
names(df)
# extract column from dataframe
df$thermal_time
df[,3]
df[,'thermal_time']
df[['thermal_time']]

# not work
df[thermal_time]
# different error message
#!! name space conflict
df[time]
time

# summarize dataframe
#range gibt NUR kleinstes und gr????tes objekt, lapply geht SPaltenweise
lapply(df, range)
# turn as data frame
lapply(df, range) %>% data.frame()

summary(df)
vec<-c(1,3,7)
vec
str(vec)

list(vec)

lo<-list(vec)
lo
lo[1]
lo[[1]]
str(lo[1])
str(lo[[1]])
# [[]] gibt en inhalt wieder, anderer data typ als [] der als liste wiedergegeben wird


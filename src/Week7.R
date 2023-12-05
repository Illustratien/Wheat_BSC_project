library(dplyr)
df <- data.frame(time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,3,1),
                 temp=c(20,15,13), 
                 thermal_time=cumsum(c(20,15,13)))
df %>% dplyr::glimpse() 
names(df)

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
lapply(df, range)
# turn as data frame
lapply(df, range) %>% data.frame()

summary(df)

# df$time %>% str()
df %>% dplyr::filter(time=='2023-04-17') %>% .$temp
df %>% dplyr::filter(time==as.Date('2023-04-17')) %>% .$temp
#geht schneller
df[[1,2]]
df[1,2  ]
df["2023-04-17"==df$"time","temp"]
##so schreiben, wenn man etwas bestimmtes sucht.
#ist besser als sowas zu schreiben, je allgemeiner, 
#desto besser bzw. je weniger man seine eigene einschC$tzung verwendet,
#desto besser


# result is not save
df %>% dplyr::mutate(Year="2023")
df %>% dplyr::mutate(.data=.,Year="2023")
mutate(df,Year="2023")
df
#mutate speichert nicht die C$nderung, macht vecto recycling

################# result is saved
df$Year <- "2023"
df[['Year']] <- "2023"
df
#wenn ich  neue spalten haben mC6chte, mach das wie in der zeile darunter
df<-dplyr::mutate(.data=df,Year="2023",Rainfall="600ml") 
df

df <- data.frame(time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,3,1),
                 temp=c(20,15,13), 
                 thermal_time=cumsum(c(20,15,13)))
df
# with same length dataframe
ear_df <- data.frame(time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,3,1),
                     ear_weight=c(20,40,50))
merge(df,ear_df,by="time")
dplyr::left_join(df,ear_df,by="time")
# combind with vector of same length 
cbind(df, ear_weight=c(20,40,50))
df$ear_weight <- c(20,40,50)
df 
# with differnt length 
short_ear_df <- data.frame(time=as.Date("2023-04-16",format="%Y-%m-%d")+seq(1,2,1),
                           ear_weight=c(20,40))
merge(df,short_ear_df,by="time")
#dplyr::left_join fC<r rinrnhaupt df und einen neben df zum hinzugC<gen
dplyr::left_join(df,short_ear_df,by="time")

# combind with vector of different length 
cbind(df, ear_weight=c(20,40,NA))
df$ear_weight <- c(20,40,NA)

# Watch out the names!
library(ggplot)
library(ggplot2)
install.packages("ggplot2")

#achte auf den datentyp immer mit "" arbeiten
data<-read.csv("./data/ear_summarized.csv")
phenology<-read.csv("./data/phenology_short.csv")
data
data %>% 
  ggplot()+
  geom_point(aes(x=date,y=weight,color=var))+
  geom_line(aes(x=date,y=weight,group=group))+ # link the point by group.
  xlab("date of harvest")+ #x axis title
  ylab("ear weight(g)") +  #y axis title
  guides(color=guide_legend(title="Cultivar"))+ #change legend title 
  theme_dark()
  names
names(data)


phenology %>% 
  ggplot(.,aes(x=var,y=value))+
  geom_boxplot()+
  facet_grid(Year~stage)

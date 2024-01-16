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

# df$time %>% str() content of a column= searching for row
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


# verschieben vertikal des axen textes ------------------------------------


# Create sample data
set.seed(5642)							 
sample_data <- data.frame(name = c("Geek1","Geek2",
                                   "Geek3","Geek4",
                                   "Geeek5") ,
                          value = c(31,12,15,28,45)) 

# Load ggplot2 package
library("ggplot2") 

# Create bar plot using ggplot() function
ggplot(sample_data,
       aes(name,value,, color=name)) + 
  
  # geom_bar function is used to plot bars 
  # of barplot
  geom_bar(stat = "identity", fill="white")+
  
  # vjust is used to justify the label vertically
  theme(axis.text.x = element_text(vjust=-5)) 
################################################################### Create sample data
set.seed(5642)							 
sample_data <- data.frame(name = c("Geek1","Geek2",
                                   "Geek3","Geek4",
                                   "Geeek5") ,
                          value = c(31,12,15,28,45)) 

# rotieren des axen textes ------------------------------------------------


# Load ggplot2 package
library(ggplot2) 
library(dplyr)
# Create bar plot using ggplot() function
ggplot(sample_data,
       aes(name,value,, color=name)) 
  
  # geom_bar function is used to plot bars 
  # of barplot
 geom_bar(stat = "identity", fill="white")+
  
  # rotate axis label using axis.text.x parameter
  # of theme() 90 degree rotation makes label 
  # vertical
  theme(axis.text.x = element_text(angle = 90)) 



phenology %>% 
  ggplot(.,aes(x=var,y=value, colour=var))+
  geom_boxplot()+
  geom_line(aes(group=group))+
  facet_grid(DFG_year~sowing_date)+
theme(axis.text.x = element_text(angle = 90))+
  theme(axis.text.x = element_text(vjust=-0,2))#+ 
#xlab("Cultivar")+
 # ylab("Thermal time (C°d)")+
  #guides(color=guide_legend(title="Cultivar")) +
 #ggtitle("Phenological Phases")


phenology


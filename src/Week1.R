library(dplyr)

# Challenge Week 1 --------------------------------------------------------


date_element <- as.Date('2023-04-17')
date_element
seq(from = date_element, to = date_element +5)
endederseq<-date_element + 5
seq(date_element, endederseq, by=1)
seq(date_element,by=1, length.out=6)
seq(date_element,by=1, length.out=6)%>% mean(.)


vec1<-c("a","b")
vec2<-c("1","2")
vec1
vec2 
rep(vec1, each=2)
rep(vec2, times=2)
rep("vec1"+"vec2",each=2,times=2)
paste(rep("vec1"+"vec2",each=2,times=2))
vec1_numeric<- as.numeric(vec1)
rep(vec1_numeric+vec2,each=2,times=2)
vec_sum<- vec1_numeric+vec2
suppressWarnings(as.numeric(vec1))                    
vec1.1<- as.numeric(vec1)
result <- paste(rep(vec1, each = length(vec2)), rep(vec2, times = length(vec1)))
print(result)

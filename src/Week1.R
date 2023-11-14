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
'vec2'
# sumvec<-str
  vec1+vec2
#match(c("s","c"), letters)
wiederholungalphabet<-rep(vec1, each=2)
wiederholungziffern<-rep(vec2, times=2)

# rep(vec1,vec2,each=2,times=2)
# syntax paste(x,..., sep="")
# paste(rep("vec1"+"vec2",each=2,times=2))
#so funktioniert das zeile 30
paste(wiederholungalphabet,
      wiederholungziffern,
      sep = "")
vec1_numeric<- as.numeric(vec1)
rep(vec1_numeric+vec2,each=2,times=2)
vec_sum<- vec1_numeric+vec2
suppressWarnings(as.numeric(vec1))                    
vec1.1<- as.numeric(vec1)
result <- paste(rep(vec1, each = length(vec2)), 
                rep(vec2, times = length(vec1)),
                sep="")
print(result)

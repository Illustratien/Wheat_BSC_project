# copy --------------------------------------------------------------------
# ctr+shift+r
# block it in ctr,shift+c

# check if pattern exist in vector
3%in%c(1,3) 
2%in%c(1,3) 
#!macht den befehl gegenteilig
1==2 
!1==2 
1!=2 
c(1,3)==2
# which zeigt an, an welcher position wo die richtige aussage ist

# self function -----------------------------------------------------------


reihenfolge <- function(vec,dec=TRUE){
  #numeric,char vec ist alles was c() ist
  #diese function setzt alle elemente des vektors in einer ausgewählten reiehenfolge
  vec[order(vec,decreasing= dec)]
}

order(c(3,1,2))
order(c(3,1,2),decreasing = TRUE)
c(3,1,2)[order(c(3,1,2))]
which(c(1,3)==3) 
reihenfolge(c("a","b","c"),dec=FALSE
) 
reihenfolge(c(3,1,2,5,4,5,7,8),dec = FALSE) 
# what will be the difference?
#order macht, zeigt, wo man die angegeben vectoren angeben muss, damit man die richtige reiehenfolge kriegt
order(c(3,1,2)) 
c(3,1,2) %>% .[order(.)]
#[] ist für die auswahl eines elemts des vektors zb richtige psoition von line 15

# -------------------------------------------------------------------------


# what will be the data type? check with str()
c(1,2,NA) %>% is.na() 
c(1,2,NA) %>% is.na() %>% which() 
c(1,2,NA) %>% is.na() %>% !.
c(1,2,NA) %>% !is.na() 
!is.na(c(1,2,NA))
str(c(1,2,NA))
# check if data type match
arg <- ""
is.character(arg)
if(is.character(arg)){
  print("character")
}

if(is.character(arg)){
  print("character")
}else{
  error("type other than character")
}

if(is.character(arg)){
  warning("wrong")
}

if(is.character(arg)){
  stop("wrong")
}
c(1,3) %in% 3
1==c(1,3)
install.packages(tidyrverse)
install.packages("tidyrverse")
library(dplyr)

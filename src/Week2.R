# check if pattern exist in vector
3%in%c(1,3) 
2%in%c(1,3) 
#!macht den befehl gegenteilig
1==2 
!1==2 
1!=2 
c(1,3)==2

which(c(1,3)==3) 

# what will be the difference?
order(c(3,1,2)) 
c(3,1,2) %>% .[order(.)]

# what will be the data type? check with str()
c(1,2,NA) %>% is.na() 
c(1,2,NA) %>% is.na() %>% which() 
c(1,2,NA) %>% is.na() %>% !.
c(1,2,NA) %>% !is.na() 
!is.na(c(1,2,NA))

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

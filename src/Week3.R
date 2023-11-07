
# Week3 start -------------------------------------------------------------

library(dplyr)

# working directory, abbreviated as "."
getwd()
# parent directory, abbreviated as ".."
dirname(getwd())
# assign current path to variable
current_path <- getwd()
# check the type 
current_path %>% str()
blabla<-current_path %>% str()

# check files in the directory

# are they different?
"." %>% list.files(path=.)
getwd() %>% list.files(path=.)

# are they different?
".." %>% list.files(path=.)
getwd() %>% dirname() %>% list.files(path=.)
getwd() %>% list.files(data)

"data"%>% list.files(path=.)
".\\data"%>% list.files(path=.)
"src"%>% list.files(path=.)

# vec ---------------------------------------------------------------------


empty_vec <- c()
length(empty_vec)
# what is the type of the empty vec?
empty_vec %>% str()

# NULL: empty 
empty_vec[1]
empty_vec[0]


vec <- c(1,3,5)
vec[1]
#reorder the vector 
vec[c(2,1,3)]
# removing the indexed elements
vec[-1]
vec[-2]

# indexing start from 1, not 0
# therefore you get, numeric(0)
vec[0]
# when access exceeding the range of a vector, what datatype do you get? 
vec[4]
vec %>% .[length(.)+1]
vec[1:4]
vec[4:1]
#damit kann man die aufgabe mit dem datum machen

# find specific element or position
vec[c(F,T,F)]
vec[vec==5]
# when codition not match at all, it will return? numeric (0)
vec[vec==2]
vec[c(F,F,F)]
vec %>% .[c(F)]
vec[vec=="a"]

# default str vector
letters
LETTERS
# when the query does not match, guess what will be the datatype? numeric (0)
letters %>% .[.==2]
letters %>% .[c(F)]
# vector over write
vec
vec <- c(2,1,3)
vec

# what will be the difference?
order(c(3,1,2)) 
c(3,1,2) %>% .[order(.)]

# challenge2 --------------------------------------------------------------
#logical_vec macht nur an vektor position hintereinander ohne zu aktualisieren, bevor es die gewollte vektorlänge erreicht

vec <- c(1, 2, 3, 4, 5)
logical_vec <- c(TRUE, FALSE)
subset_vec <- vec[logical_vec]
subset_vec

vec <- c(1, 2, 3, 4, 5)
logical_vec <- c(TRUE, FALSE)
x("c(TRUE, FLASE)")<- vec[logical_vec]
x[1:10]
(a <- 1:10)
(b <- 1:5)
(a+b)


list_a <- list(c(1,2))
list_a[1] %>% str()
list_a[[1]]%>% str()
list_a[[1]][1]
list_a[1][1]


# create a simple list
list(1)
# create a simple list with name "x" for first element
list(x=1)
list(x=1)["x"]
# extract content
list(x=1)$"x"
list(x=1)[[1]]
list(x=1)[["x"]]

# extract with pipe
list(x=1) %>% .[[1]]
list(x=1) %>% .$"x"

# long list
long_list_example <- list(1,c(1,2),
                          T,c(T,T),
                          nam1="str",c("a","b"),
                          list(1),
                          mean,data.frame())
#
long_list_example
long_list_example[[5]]
# check structure of this list 
#merke immer etwas definiern, sonst funktioniert es nicht
list_complex_example<- long_list_example
list_complex_example %>% str()
list_complex_example %>% glimpse()
 list_complex_example
# first list 
long_list_example[1]
# content of first list
long_list_example[[1]]
# first element of content of first list
long_list_example[[1]][1]

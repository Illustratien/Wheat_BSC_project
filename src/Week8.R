df <- expand.grid(x=letters[1:4],
                  y=1:2) 
df
x
y
#expand grid erstellt einen df mit vectoren verschiedener länge
# add identifier based on row numbers

df%>% mutate(paste(x,y))
df%>% mutate(z=paste(x,y))
df%>% mutate(z=paste(x,y,sep = "-"))
df %>% tidyr::unite(data = .,col = "z",c(x,y))
df <- df %>% mutate(z=interaction(x,y))

ncol(df%>% mutate(paste(x,y)))
ncol(df%>% mutate(z=paste(x,y)))
ncol(df%>% mutate(z=paste(x,y,sep = "-")))

paste(x,y)
#wenn mann zwei reihen anzeigen will außerhalb des df
#nach dem $ wird es von der liste zu einem vektor df$y=liste$vektor
paste(df$x,df$y)
with(df,
     paste(x,y)
     )
# add identifier based on row numbers
df %>% mutate(id=1:n())
df %>% mutate(id=1:nrow(.))
# row names
rownames(df)
rownames(df) <- LETTERS[1:nrow(df)]
rownames(df)


df

df %>% filter(z%in%c("a.1","c.2"))
with(df, paste("a.1","c.2"))
co<-c(7,1)
df[co,-3]

df[setdiff(1:nrow(df),co),-3]
df[-co,-3]

df %>% filter((x=="a"&y==1)|(x=="c"&y==2))
df %>% dplyr::filter((x=="a" & y==1)|(x=="c"&y==2))

df %>% .[rownames(.)%in%c("A","G"),]
df %>% with(.,.[(x=="a"&y==1)|(x=="c"&y==2),])


  






df_filtered <- df %>% filter((x == "a" & y == 1) | (x == "c" & y == 2))
df_filtered


df_filtered <- df[(df$x == "a" & df$y == 1) | (df$x == "c" & df$y == 2), ]
df_filtered


library(tidyr)
df <- data.frame(
  x1=1:3,
  x2=letters[1:3],
  x3=c("2a","2b","2c")
)
df
# or condition separate by |# erstellt nichts neues, sondern kombiniert beide ereignisse
(df$x1==2|df$x3=="2c") %>% which()
#which zeigt auf welcher position das richtige ist
df %>% filter(x1==2|x3=="2c")#%>%str()
df %>% with(.,x1==2|x3=="2c")#%>%str()

# when not specifying the comma, it will be treated like column
df %>% with(.,.[x1==2|x3=="2c"])#false true ture, falsee ist hier x1
# specify the rows
df %>% with(.,.[x1==2|x3=="2c",])
df

df <- expand.grid(x=letters[1:4],
                  y=1:2)
df

# add identifier based on row numbers
df %>% mutate(id=1:n())
df %>% mutate(id=1:nrow(.))
# row names
rownames(df)
rownames(df) <- LETTERS[1:nrow(df)]
rownames(df)





df_filtered <- df %>% filter((x == "a" & y == 1) | (x == "c" & y == 2))
df_filtered


df_filtered <- df[(df$x == "a" & df$y == 1) | (df$x == "c" & df$y == 2), ]
df_filtered



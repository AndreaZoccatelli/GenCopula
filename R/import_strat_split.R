import_strat_split <- function(path, name) {
  set.seed(1)
  #dataset must have target column called y, binary numeric (0/1)
  setwd(path) #working directory
  df <- read.csv(name)
  y <- df$y
  df <- df %>% dplyr::select(-y) #dataset MUST have only continuous variable (and the binary y)
  df <- map_dfr(df, scale)
  df$y <- y
  df$id <- 1:nrow(df)
  set.seed(1) #make results reproducible
  n_minority <- df %>% filter(y == 1) %>% nrow()
  s <- n_minority/nrow(df) #find minority share to keep same share in train and test set
  s_min <- round(df %>% nrow() * 0.8 * s, 0)
  s_maj <- round(nrow(df) * 0.8 - s_min, 0)
  minority <- df %>% filter(y == 1)
  majority <- df %>% filter(y == 0)
  id_train <- c(sample(minority$id, s_min), sample(majority$id, s_maj))
  train <- df[id_train,]
  test <- df[-id_train,]
  setClass("DB", representation(dataset = "data.frame", train_set = "data.frame", test_set = "data.frame"))
  DB <- new("DB", dataset = df, train_set = train, test_set = test) #collect into S4
  return(DB)
}

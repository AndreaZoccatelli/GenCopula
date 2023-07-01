extract_minority = function(train){
  minority = train %>% filter(y == 1) %>% dplyr::select(-c(y, id))
  return(minority)
}

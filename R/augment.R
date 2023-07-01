augment = function(train, best_copula_i, minority, share, outliers_r, nearest){
  set.seed(1)
  #fit and sampling from copula
  best_copula = fit_copula(best_index = best_copula_i, dplyr::select(train, -c(y,id)))
  n = round(share*nrow(minority),0)
  if (nearest == 1){
    sampled = rCopula(n*2, copula = best_copula@copula) #*2 because then only 0.5 quantile nearest obs are kept
    sampled = nearest(minority, generated = sampled)
  } else {
    sampled = rCopula(n, copula = best_copula@copula)
  }
  sampled = as_tibble(sampled)
  if (outliers_r == 1){
    sampled = outliers_rmv(sampled)
  }
  names(sampled) = names(minority)
  sampled$y = 1
  #augmenting
  newdata = bind_rows(train, sampled)
  return(newdata)
}

nearest = function(minority, generated){ #finds the 50% observations nearest to medoid
  medoid = medoid(minority)
  l = c()
  for (k in 1:nrow(generated)){
    l[k] = euclidean_d(generated[k,], medoid)
  }
  generated = generated[which(l <= quantile(l, 0.5)),]

  return(generated)
}

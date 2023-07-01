#' @keywords internal
medoid = function(dataset){ #finds medoid of a group of observations, more robust to outliers than centroid
  d = dist(dataset)
  clus = rep(1, nrow(dataset))
  medoid = medoids(d, clus)
  return(medoid)
}

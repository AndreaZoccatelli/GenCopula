outliers_rmv = function(dataset){
  md  = mahalanobis(dataset, center = colMeans(dataset), cov = cov(dataset))
  alpha = .001
  cutoff = (qchisq(p = 1 - alpha, df = ncol(dataset)))
  cleaned = dataset[which(md < cutoff),]
  return(cleaned)
}

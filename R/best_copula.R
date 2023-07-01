best_copula = function(train){
  copulas_scores = c(xvCopula(normalCopula(dim = ncol(train)), x = train, k = 10),
                     xvCopula(tCopula(dim = ncol(train)), x = train, k = 10),
                     xvCopula(joeCopula(dim = ncol(train)), x = train, k = 10),
                     xvCopula(claytonCopula(dim = ncol(train)), x = train, k = 10),
                     xvCopula(gumbelCopula(dim = ncol(train)), x = train, k = 10))
  sorted_scores = sort(copulas_scores, decreasing = T, index.return = T)
  best_index = sorted_scores$ix
  return(best_index)
}

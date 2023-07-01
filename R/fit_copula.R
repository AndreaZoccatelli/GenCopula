#' @keywords internal

fit_copula = function(best_index, minority){ #fits the copula that better approximate the joint of features (according to best_index)
  if (best_index[1] == 1){
    copula = fitCopula(normalCopula(dim = ncol(minority), dispstr = "un"), data = pobs(as.matrix(minority)), method = "ml")
  }else if(best_index[1] == 2){
    copula = fitCopula(tCopula(dim = ncol(minority), dispstr = "un"), data = pobs(as.matrix(minority)), method = "ml")
  }else if(best_index[1] == 3){
    copula = fitCopula(joeCopula(dim = ncol(minority)), data = pobs(as.matrix(minority)), method = "ml")
  }else if(best_index[1] == 4){
    copula = fitCopula(claytonCopula(dim = ncol(minority)), data = pobs(as.matrix(minority)), method = "ml")
  }else if(best_index[1] == 5){
    copula = fitCopula(gumbelCopula(dim = ncol(minority)), data = pobs(as.matrix(minority)), method = "ml")
  }
  return(copula)
}

#' @keywords internal
stratify = function(train){
  set.seed(1)
  id = cvGenStratified(factor(train$y),5) #same number of positives for every fold
  return(id)
}

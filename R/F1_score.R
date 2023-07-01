F1_score = function(real, predicted){
  prec = Precision(real, predicted)
  rec = Recall(real, predicted)
  F1 = 2*(prec*rec)/(prec+rec)
  return(F1)
}

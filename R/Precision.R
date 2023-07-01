Precision = function(real, predicted){
  #Precision = TP/(TP+FP)
  prec = sum(predicted[predicted == real] == 1)/(sum(predicted[predicted != real] == 1) + sum(predicted[predicted == real] == 1))
  return(prec)
}

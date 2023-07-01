Recall = function(real, predicted){
  #Recall = TP/(TP+FN)
  rec = sum(predicted[predicted == real] == 1)/(sum(predicted[predicted != real] == 0) + sum(predicted[predicted == real] == 1))
  return(rec)
}

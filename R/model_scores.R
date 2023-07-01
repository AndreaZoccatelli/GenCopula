#' @keywords internal
model_scores = function(train_set, m, test_set){
  model = select_fit_model(train_set, m)
  pred_values = predictions(m, model, test_set)
  F1_value = F1_score(real = test_set$y, predicted = pred_values)
  if (is.nan(F1_value)){
    F1_value = 0
  }
  return(F1_value)
}

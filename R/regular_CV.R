#' @keywords internal
regular_CV = function(train, id, models){
  table = tibble(models)
  for (k in (1:5)){ #create dynamically a table that contains the scores by model
    if (k ==1){
      dytable = table
    }else{
      dytable = results
    }
    scores = c()
    #split
    train_cv = train[id != k,]
    valid_cv = train[id == k,]
    #F1 values
    for (m in (1:length(models))){
      scores[m] = model_scores(train_cv, models[m], valid_cv)
    }
    results = comparison_table(dytable, k = k, scores = scores)
  }

  return(t_table(results)) #easier format for calculations
}

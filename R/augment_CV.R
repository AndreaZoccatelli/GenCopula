#' @keywords internal
augment_CV = function(train, id, share, models, best_copula_i, outliers_r, nearest){ #to tune the share parameter
  fitted_copulas = c()
  table = tibble(models)
  for (k in (1:5)){
    if (k ==1){
      dytable = table
    }else{
      dytable = results
    }
    scores = c()
    #split
    train_cv = train[id != k,]
    valid_cv = train[id == k,]
    #augmentation
    minority = extract_minority(train_cv) #NOW NOT USED, I'M USING THE FULL TRAIN SET
    train_cv_a = augment(train = train_cv, best_copula_i, minority, share, outliers_r, nearest)
    for (m in (1:length(models))){
      scores[m] = model_scores(train_cv_a, models[m], valid_cv)
    }
    results = comparison_table(dytable, k = k, scores = scores) } #save into regular scores list
  return(t_table(results))
}

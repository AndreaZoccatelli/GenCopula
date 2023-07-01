#' @keywords internal
avg_var_table = function(models, table){ #create a table with mean and variance of F1 Score
  F1_avg = c()
  F1_var = c()
  for (k in 1:ncol(table)){
    F1_avg[k] = mean(table[,k])
    F1_var[k] = var(table[,k])
  }
  summaries = data.frame(models, F1_avg, F1_var)
  return(summaries)
}

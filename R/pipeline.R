pipeline = function(train, id, models = c("Logistic", "RandForest", "XGBoost"), share, best_copula_i, outliers_r = 1, nearest = 1){
  set.seed(1)
  table = regular_CV(DB@train_set, id, models)
  table_summary = avg_var_table(models, table)
  aug_table = augment_CV(DB@train_set, id, share, models, best_copula_i, outliers_r, nearest)
  aug_table_summary = avg_var_table(models, aug_table)
  setClass("scores tables", representation(regular = "data.frame", reg_summary = "data.frame",
                                           augmented = "data.frame", aug_summary = "data.frame"))
  tables = new("scores tables",regular = table, reg_summary = table_summary,
               augmented = aug_table, aug_summary = aug_table_summary)
  return(tables)
}

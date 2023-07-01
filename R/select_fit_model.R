#' @keywords internal
select_fit_model = function(train_set, m = "Logistic"){ #select and fit a model to data
  flag = 0
  if (m == "Logistic"){
    model = glm(train_set$y ~ ., data=dplyr::select(train_set, -c(id, y)), family = binomial)
  }else if(m == "RandForest"){
    model = randomForest(as.factor(train_set$y) ~ ., data=dplyr::select(train_set, -c(id, y)))
  }else if(m == "XGBoost"){
    train_y = dplyr::select(train_set, y) %>% as.matrix() #additional editing to fit XGBoost
    train_set = dplyr::select(train_set, -c(id, y)) %>% as.matrix()
    xgtrain = xgb.DMatrix(data = train_set, label= train_y)
    model = xgboost(data = xgtrain, max.depth = 3, nrounds = 10, verbose = FALSE)
  } #add another 'else if' for other models
  return(model)
}

#' @keywords internal
predictions = function(m, model, test_set){
  if (m == "XGBoost"){ #again additional editing for test set to fit XGBoost
    test_y = dplyr::select(test_set, y) %>% as.matrix()
    test_set = dplyr::select(test_set, -c(id, y)) %>% as.matrix()
    test_set = xgb.DMatrix(data = test_set, label= test_y)
  }else{
    test_set = test_set
  }
  if(m != "RandForest"){
    pred_values = model %>% predict(test_set, type ='response')
    pred_values = ifelse(pred_values>0.5,1,0)
  }else{
    pred_values = model %>% predict(test_set, type ='response')
  }
  return(pred_values)
}

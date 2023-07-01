#' @keywords internal
comparison_table = function(table, tot_k = 5, k, scores){
  columns = paste0("fold", 1:tot_k)
  table = table %>% mutate(!!columns[k] := scores) #to assign element of list as column name
  return(table)
}

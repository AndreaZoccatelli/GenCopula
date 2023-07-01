#' @keywords internal
t_table = function(table){ #function to simply improve the results view
  table = table %>%
    column_to_rownames(var = 'models')
  table = as.data.frame(t(table))
  return(table)
}

#' @title IFC Package Checker
#' @description Test if IFC package is installed.
#' @examples 
#' IFC_installed <- IFC_avl()
#' print(IFC_installed)
#' @return a invisible logical
IFC_avl <- function() {
  requireNamespace("IFC", quietly = TRUE)
}
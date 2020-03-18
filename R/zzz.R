.pkgenv <- new.env(emptyenv())

.onLoad <- function(libname, pkgname) {
  ifc_avl <- requireNamespace("IFC", quietly = TRUE)
  .pkgenv[["ifc_avl"]] <- ifc_avl
}

.onAttach <- function(lib, pkg)
{
  # startup message
  msg <- c(paste("Package 'IFCdata' version", packageVersion("IFCdata")),
           "\nType `citation(\"IFCdata\")` for citing this R package in publications.")
  if(!.pkgenv[["ifc_avl"]]) {
    msg <- c(msg,
             paste('\n', 'This package contains data examples to illustrate how it can be handle by IFC package.',
                   'Please install IFC package treat IFCdata.'))
  }
  packageStartupMessage(paste(strwrap(msg), collapse = "\n"))      
  invisible()
}
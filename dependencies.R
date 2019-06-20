# try to load a package, if its not installed then it installs it with the
# provided inst_fun, and finally it loads the package
load_install <- function(pkg, inst_fun = install.packages) {
  if (!require(pkg, character.only = TRUE)) {
    inst_fun(pkg)
    library(pkg, character.only = TRUE)
  }
}

load_install("rco", function(pkg)
  remotes::install_github("jcrodriguez1989/rco"))
load_install("shiny")
load_install("shinythemes")
load_install("httr")

rm(load_install)

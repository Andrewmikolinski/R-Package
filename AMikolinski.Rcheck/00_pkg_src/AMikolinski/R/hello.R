# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
#' @example AMikolinski.R
#' @description
#' `hello_fun` says hello and uses the name of the person as an argument.
#' @details
#' This is a generic function that can be used to say hello/
hello <- function() {
  print(glue::glue("Hello Andrew"))
}
#' @export

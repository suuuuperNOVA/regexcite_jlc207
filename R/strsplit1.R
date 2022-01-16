#' Split a string
#'
#' @param string A character vector with, at most, one element.
#' @inheritParams stringr::str_split
#'
#' @return A character vector.
#' @export
#'
#' @examples
#' x <- "alfa,bravo,charlie,delta"
#' strsplit1(x, pattern = ",")
#' strsplit1(x, pattern = ",", n = 2)
#'
#' y <- "192.168.0.1"
#' strsplit1(y, pattern = stringr::fixed("."))''
strsplit1 <- function(string, split, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = split, n = n)[[1]]
  } else {
    character()
  }
}

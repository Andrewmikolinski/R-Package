#' Example Dataset
#'
#' This dataset provides an example of data with ID, Name, Age, and Gender columns.
#'
#' @format A data frame with columns:
#' \describe{
#'   \item{StateProvince}{State}
#'   \item{decimalLongitude}{Longitude of observation}
#'   \item{decimalLatitude}{Latitude of observation}
#'
#' }
#'
#' @source Simulated data for illustrative purposes.
#' @export
#' @examples
#' data(dataset)
#' # Viewing the structure of the dataset
#' str(dataset)
#'
#' # Summarizing the dataset
#' summary(dataset)
#'
#' # Accessing specific variables
#' dataset$decimalLatitude
#' dataset$decimalLongitude
#' dataset$stateProvince
dataset <- data.frame(
  stateProvince=c("South Carolina", "South Carolina"),
  decimalLongitude= c(-82.899328, -82.226109),
  decimalLatitude = c(33.288275, 35.197685))
#' Beneath positive slope
#'
#' This function gives all data points in a data frame that are beneath the line created by the 2 sets of coordinates
#'
#' @param a Data frame
#' @param b Latitude 1 (smaller)
#' @param c Longitude 1 (smaller)
#' @param d Latitude 2 (larger)
#' @param e Longitude 2 (larger)
#' @param f State
#' @return Subset of data frame that is below the line
#' @export
#' @examples less_mlatlongdf(dataset, 33.288275, -82.899328, 35.197685, -82.226109, "South Carolina")
less_mlatlongdf <- function(a, b, c, d, e, f){
  x1 <- c
  y1 <- b
  x2 <- e
  y2 <- d
  m <- ((y2 - y1) / (x2 - x1))
  int <- y1 - (m * x1)
  subset <- (data.frame(a[a$decimalLatitude > b & a$decimalLatitude < d & a$decimalLatitude < ((m * a$decimalLongitude) + int) & a$decimalLongitude > ((a$decimalLatitude - int)/m), ]))
  return(subset[subset$stateProvince == f, ])
}
#' Above negative slope
#'
#' This function gives all data points in a data frame that are above the line created by the 2 sets of coordinates
#'
#' @param a Data frame
#' @param b Latitude 1 (larger)
#' @param c Longitude 1 (larger)
#' @param d Latitude 2 (smaller)
#' @param e Longitude 2 (smaller)
#' @param f State
#' @return Subset of data frame that is above the line
#' @export
#' @examples ngreater_mlatlongdf(dataset, 35.197685, -82.226109, 33.288275, -82.899328, "South Carolina")
ngreater_mlatlongdf <- function(a, b, c, d, e, f){
  x1 <- c
  y1 <- b
  x2 <- e
  y2 <- d
  m <- ((y2 - y1) / (x2 - x1))
  int <- y1 - (m * x1)
  subset <- (data.frame(a[a$decimalLatitude > d & a$decimalLatitude < b & a$decimalLatitude > ((m * a$decimalLongitude) + int) & a$decimalLongitude > ((a$decimalLatitude - int)/m), ]))
  return(subset[subset$stateProvince == f, ])
}
#' Below negative slope
#'
#' This function gives all data points in a data frame that are below the line created by the 2 sets of coordinates
#'
#' @param a Data frame
#' @param b Latitude 1 (larger)
#' @param c Longitude 1 (larger)
#' @param d Latitude 2 (smaller)
#' @param e Longitude 2 (smaller)
#' @param f State
#' @return Subset of data frame that is below the line
#' @export
#' @examples nless_mlatlongdf(dataset, 35.197685, -82.226109, 33.288275, -82.899328, "South Carolina")
nless_mlatlongdf <- function(a, b, c, d, e, f){
  x1 <- c
  y1 <- b
  x2 <- e
  y2 <- d
  m <- ((y2 - y1) / (x2 - x1))
  int <- y1 - (m * x1)
  subset <- (data.frame(a[a$decimalLatitude > d & a$decimalLatitude < b & a$decimalLatitude < ((m * a$decimalLongitude) + int) & a$decimalLongitude < ((a$decimalLatitude - int)/m), ]))
  return(subset[subset$stateProvince == f, ])
}
#' Above positive slope
#'
#' This function gives all data points in a data frame that are above the line created by the 2 sets of coordinates
#'
#' @param a Data frame
#' @param b Latitude 1 (smaller)
#' @param c Longitude 1 (smaller)
#' @param d Latitude 2 (larger)
#' @param e Longitude 2 (larger)
#' @param f State
#' @return Subset of data frame that is above the line
#' @export
#' @examples greater_mlatlongdf(dataset, 33.288275, -82.899328, 35.197685, -82.226109, "South Carolina")
greater_mlatlongdf <- function(a, b, c, d, e, f){
  x1 <- c
  y1 <- b
  x2 <- e
  y2 <- d
  m <- ((y2 - y1) / (x2 - x1))
  int <- y1 - (m * x1)
  subset <- (data.frame(a[a$decimalLatitude > b &a$decimalLatitude <d & a$decimalLatitude > ((m * a$decimalLongitude) + int) & a$decimalLongitude < ((a$decimalLatitude - int)/m), ]))
  return(subset[subset$stateProvince == f, ])
}

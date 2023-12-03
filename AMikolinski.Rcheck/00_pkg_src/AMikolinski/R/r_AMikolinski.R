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

library("testthat")


setwd("C:\\Users\\andre\\Documents\\BIOL7800\\Project Proposal\\Raw_Data")
EriL <- read.csv("Ericales.csv")
EriL1 <- subset(EriL, select = -c(occurrenceID, datasetKey, kingdom, phylum, class, countryCode, occurrenceStatus, publishingOrgKey, coordinatePrecision, elevation, elevationAccuracy, depth, depthAccuracy, eventDate, day, month, year, taxonKey, speciesKey, institutionCode, catalogNumber, identifiedBy, dateIdentified, license, rightsHolder, recordedBy, typeStatus, lastInterpreted, mediaType, issue, individualCount, basisOfRecord, collectionCode, recordNumber, establishmentMeans))

df1 <- read.csv("df1.csv")
m <- ((35.197685-33.288275)/(-82.226109--82.899328))
int <- 33.288275-(m * -82.899328)

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
test_that("Error returned when working with non-character or non-numeric input input", {
  expect_error(nless_mlatlongdf(1:5))
})
test_that("It should work with character input", {
  expect_equal(nless_mlatlongdf(EriL1, 33.288275, -82.899328, 35.197685, -82.226109, "South Carolina"), EriL1[EriL1$decimalLatitude > 35.197685 & EriL1$decimalLatitude < 33.288275 & EriL1$decimalLatitude < ((m * EriL1$decimalLongitude) + int) & EriL1$decimalLongitude < ((EriL1$decimalLatitude - int)/m) & EriL1$stateProvince == "South Carolina", ])
})

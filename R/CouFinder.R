#' A Country finder.
#'
#' This function allows you to find out what region your country of choice resides in.
#' @param region Write down any region you would like! (as long as it's in the database that is)
#' @return The countries that are part of your region.
#' @export
#' @examples
#' CouFinder("x")

CouFinder <- function(Region){
  data <- read.csv("data.csv")
  dataset_filtered <- select(data, Country, region)
  Country <- filter(dataset_filtered, region == Region)
  unique(Country)
}
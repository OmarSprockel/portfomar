#' A region finder.
#'
#' This function allows you to find out what region your country of choice resides in.
#' @param country Write down any country you would like! (as long as it's in the database that is)
#' @return The region your country resides in.
#' @export
#' @examples
#' RegionFinder("x")

RegionFinder <- function(country){
  data <- read.csv("data.csv")
  dataset_filtered <- select(data, Country, region)
  Region <- filter(dataset_filtered, Country == country)
unique(Region)
}
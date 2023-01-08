#' A total population finder.
#'
#' This function allows you to find the total population for the country, and during the year of your choice.
#' @param region Write down any country and year between 2002 and 2015 you would like! (as long as it's in the database that is)
#' @return The total population during the requested year of your requested country.
#' @export
#' @examples
#' Population_finder("x,y")


Population_finder <- function(country, year){
  data <- read.csv("data.csv")
  dataset_filtered <- select(data, Country, Year, population)
  Population <- filter(dataset_filtered, Country == country, Year == year)
unique(Population)
}
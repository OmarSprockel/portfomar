#' A graph that shows the life expectancy in a specific year, in a specific region.
#'
#' This function allows you to find out what the difference is between the life expectancy, taken from countries all residing in the same region, in the same year.
#' @param continent,year Make sure to write down both the year AND region wanted. The year can only be between 2002 and 2015.
#' @return A bar graph showing the difference in life expectancy between the countries.
#' @export
#' @examples
#' life_expectancy_graph("x","y")

Life_expectancy_graph <- function(region_wanted, year_wanted){
  dataset_countries <- read.csv("data.csv")
  dataset_filtered <- select(dataset_countries, region, Year, Country, life_expectancy)
  countries_Wanted <- dataset_filtered %>% filter(region == region_wanted, Year == year_wanted) %>%
    group_by(region, life_expectancy) %>%
    arrange(Country)
  plotting <- countries_Wanted %>% ggplot(aes(x = Country, y = life_expectancy, fill = Country))+
    geom_col() +
    labs(title = "Life expectancy for each country in supplied region and year",
         x = "Countries in requested region",
         y = "Life expectancy in requested year") + 
    theme_classic()
  plotting
}
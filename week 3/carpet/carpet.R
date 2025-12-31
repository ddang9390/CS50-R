calculate_growth_rate <- function(years, visitors) {
  earliest_year <- min(years)
  latest_year <- max(years)
  
  earliest_visitors <- visitors[1]
  latest_visitors <- visitors[-1]
  
  growth_rate <- (latest_visitors - earliest_visitors) / (latest_year - earliest_year)
  return(growth_rate)
}

predict_visitors <- function(years, visitors, year) {
  growth_rate <- calculate_growth_rate(years, visitors)
  latest_visitors <- visitors[-1]
  latest_year <- years[-1]
  
  prediction <- latest_visitors + (growth_rate * (year - latest_year))
  return(prediction)
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))

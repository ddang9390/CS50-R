country <- readline("Please enter a country's name: ")

for (i in 2020:2024){
  file <- paste0(as.character(i), ".csv")
  contents <- read.csv(file)
  
  if (country %in% contents$country){
    row <- contents[contents$country == country,]
    #total <- round(row$gdp + row$support + row$life_expectancy + row$freedom + row$generosity + row$corruption + row$residual, 2)
    total <- round(sum(row[names(row) != "country"]), 2)
    
  } else{
    total <- "unavailable"
  }
  
  cat(i, "total score for", country, "is:", total, "\n")
}
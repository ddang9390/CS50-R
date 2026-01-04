library("tidyverse")
library("stringr")

zelda <- read_csv("zelda.csv")

zelda <- pivot_wider(
    zelda,
    names_from = role,
    values_from = names
  ) |>
  separate(
    col = release,
    into = c("year", "system"),
    sep = ' - '
  ) |>
  rename_with(tolower)

zelda$year <- as.numeric(zelda$year)
save(zelda, file="zelda.RData")

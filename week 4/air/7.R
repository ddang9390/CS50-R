load("air.RData")

air <- air |>
  rename(source = level_1) |>
  filter(state == 'Oregon') |>
  
  group_by(source, pollutant) |>
  summarize(emissions = sum(emissions)) |>
  ungroup() |>
  
  arrange(source, pollutant)

save(air, file="7.RData")
View(air)
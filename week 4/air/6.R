load("air.RData")

air <- air |>
  filter(state == 'Oregon') |>
  group_by(pollutant) |>
  summarize(emissions = sum(emissions)) |>
  arrange(desc(emissions))

save(air, file="6.RData")

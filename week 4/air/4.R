load("air.RData")

air <- air |>
  filter(
    state == "Oregon",
    county == "OR - Baker"
  ) |>
  arrange(desc(emissions))

save(air, file="4.RData")
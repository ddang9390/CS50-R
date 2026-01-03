load("air.RData")

air <- air |>
  filter(
    state == "Oregon",
    county == "OR - Baker"
  )

save(air, file="3.RData")
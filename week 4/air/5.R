load("air.RData")

air <- air |>
  filter(state == "Oregon") |>
  group_by(county) |>
  slice_max(order_by = emissions)

save(air, file="5.RData")

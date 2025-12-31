bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")
transport <- rbind(bus, rail)

route <- readline("Which route will you be taking? ")
route_filter <- route %in% transport$route

if (!route_filter){
  print("Invalid route.")
} else{
  off_peak_filter <- transport$peak == "OFF_PEAK"
  peak_filter <- transport$peak == "PEAK"
  route_match <- transport$route == route
  
  off_peak_route <- transport[route_match & off_peak_filter,]
  off_peak_mean <- round(mean(off_peak_route$numerator / off_peak_route$denominator), 2)
  
  peak_route <- transport[route_match & peak_filter,]
  peak_mean <- round(mean(peak_route$numerator / peak_route$denominator), 2)
  
  print(paste0("On time ", peak_mean*100, '% of the time during peak hours'))
  print(paste0("On time ", off_peak_mean*100, '% of the time during off-peak hours'))
}
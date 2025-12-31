file <- readline("What CSV file do you want to read? ")

csv <- read.csv(file)

time <- csv$time

total_entries <- nrow(csv)
min_time <- min(time)
max_time <- max(time)
total_time <- sum(time)

print(paste0("The total number of pit stops is ", total_entries))
print(paste0("The duration of the shortest pit stop is ", min_time))
print(paste0("The duration of the longest pit stop is ", max_time))
print(paste0("The total time spent on pit stops during the race, across all racers is ", total_time))
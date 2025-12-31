# Offering flavor options
flavors <- c("Light", "Bold")
print("Flavor Options:")
cat(flavors[1], "\n")
cat(flavors[2], "\n")

flavor_choice <- readline("Which flavor would you like? ")
chosen_flavor <- flavors[flavor_choice]



# Offering caffeine options
caffeine <- c("Yes", "No")
print("Caffeine Options:")
cat(caffeine[1], "\n")
cat(caffeine[2], "\n")

caffeine_choice <- readline("Would you like caffeine? ")
chosen_caffeine <- caffeine[caffeine_choice]



if (flavor_choice == "Light" & caffeine_choice == "Yes"){
  recommend <- "Green Tea"
} else if (flavor_choice == "Light" & caffeine_choice == "No"){
  recommend <- "Chamomile Tea"
} else if (flavor_choice == "Bold" & caffeine_choice == "Yes"){
  recommend <- "Black Tea"
} else if (flavor_choice == "Bold" & caffeine_choice == "No"){
  recommend <- "Rooibos Tea"
} 
if (!(flavor_choice %in% flavors)){
  print("Invalid flavor choice\n")
  print("Flavor Options:")
  cat("1.", flavors[1], "\n")
  cat("2.", flavors[2], "\n")
}

if (!(caffeine_choice %in% caffeine)){
  print("Invalid caffeine choice\n")
  print("Caffeine Options:")
  cat(caffeine[1], "\n")
  cat(caffeine[2], "\n")
}

print(recommend)

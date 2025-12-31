# Offering flavor options
patties <- c("Yes", "No")
print("Patty Options:")
cat(patties[1], "\n")
cat(patties[2], "\n")

patty_choice <- readline("Would you like a beef patty? ")
chosen_patty <- patties[patty_choice]

# Offering caffeine options
cheese <- c("Yes", "No")
print("Cheese Options:")
cat(cheese[1], "\n")
cat(cheese[2], "\n")

cheese_choice <- readline("Would you like cheese? ")
chosen_cheese <- cheese[cheese_choice]

if (patty_choice == "Yes" & cheese_choice == "Yes"){
  recommend <- "Cheeseburger"
} else if (patty_choice == "Yes" & cheese_choice == "No"){
  recommend <- "Hamburger"
} else if (patty_choice == "No" & cheese_choice == "Yes"){
  recommend <- "Grilled Cheese"
} else if (patty_choice == "No" & cheese_choice == "No"){
  recommend <- "Toast"
} 
if (!(patty_choice %in% patties)){
  print("Invalid patty choice\n")
  print("Patty Options:")
  cat(patties[1], "\n")
  cat(patties[2], "\n")
}

if (!(cheese_choice %in% cheese)){
  print("Invalid Cheese choice\n")
  print("Cheese Options:")
  cat(cheese[1], "\n")
  cat(cheese[2], "\n")
}

print(recommend)

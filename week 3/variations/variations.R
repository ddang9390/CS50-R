random_character <- function() {
  letter <- sample(letters, size=1)
  return(letter)
}

print_sequence <- function(length) {
  for(i in 1:length){
    cat(random_character(), sep='')
    Sys.sleep(0.25)
  }
}

print_sequence(20)
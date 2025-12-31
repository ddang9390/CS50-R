file <- "analysis.csv"
tests <- read.table(
  "tests.tsv", 
  sep="\t",
  header = TRUE
)

# Modifying gender column
tests$gender <- factor(
  tests$gender,
  labels = c("Unanswered", "Male", "Female", "Other")
)

# Creating extroversion column
tests$extroversion <- round((tests$E1 + tests$E2 + tests$E3) / 15, digits=2)

# Creating neuroticism column
tests$neuroticism <- round((tests$N1 + tests$N2 + tests$N3) / 15, digits=2)

# Creating agreeableness column
tests$agreeableness <- round((tests$A1 + tests$A2 + tests$A3) / 15, digits=2)

# Creating conscientiousness column
tests$conscientiousness <- round((tests$C1 + tests$C2 + tests$C3) / 15, digits=2)

# Creating openness column
tests$openness <- round((tests$O1 + tests$O2 + tests$O3) / 15, digits=2)

# Write columns from tests to analysis.csv
write.csv(tests, file, row.names = FALSE)

result <- read.csv(file)
View(result)
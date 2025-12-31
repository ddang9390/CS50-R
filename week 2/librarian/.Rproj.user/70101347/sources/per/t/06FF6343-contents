books <- read.csv("books.csv")
authors <- read.csv("authors.csv")

# Looking for the Writer's book which is Mia Morgan's only book
author_name <- "Mia Morgan"
filter <- books$author == author_name
writer_book <- books[filter,]
View(writer_book)

# Looking for the Musician's book
# Topic is music and year is 1613
topic <- "Music"
topic_filter <- books$topic == topic
year_filter <- books$year == 1613
filter <- topic_filter & year_filter
musician_book <- books[filter,]
View(musician_book)

# Looking for the Traveler's book
# Author is either Lysandra Silverleaf or Elena Petrova
# Year is 1775
year_filter <- books$year == 1775
author_filter <- books$author == "Lysandra Silverleaf" | books$author == "Elena Petrova"
filter <- year_filter & author_filter
traveler_book <- books[filter,]
View(traveler_book)

# Looking for the Painter's book
# Pages is between 200 to 300
# Year is 1990 or 1992
page_filter <- books$pages >= 200 & books$pages <= 300
year_filter <- books$year == 1990 | books$year == 1992
filter <- year_filter & page_filter
painter_book <- books[filter,]
View(painter_book)

# Looking for the Scientist's book
# Title contains 'Quantum Mechanics
title_filter <- grepl("Quantum Mechanics", books$title)
scientist_book <- books[title_filter,]
View(scientist_book)

# Looking for the Teacher's book
# Year is in 1700s
# Author's hometown is Zenthia
year_filter <- books$year >= 1700 & books$year <= 1799
hometown_filter <- authors$hometown == "Zenthia"
author_filter <- books$author %in% authors[hometown_filter,]$author
filter <- author_filter & year_filter
teacher_book <- books[filter,]
View(teacher_book)





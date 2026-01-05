library("tidyverse")

lyrics <- read_file("lyrics/astley.txt")

# Removing punctuation
lyrics <- str_replace_all(str_trim(lyrics), "[\n-]", " ")
lyrics <- str_remove_all(lyrics, "[,.()]")

lyrics <- str_split(str_to_lower(lyrics), " ")
lyrics <- unlist(lyrics)
lyrics <- lyrics[!lyrics %in% c("")]

# Creating frequency table then converting to data frame
lyrics_table <- table(lyrics)
lyrics_table <- as.data.frame(lyrics_table)
lyrics_table <- rename(lyrics_table, word=lyrics, count=Freq)
lyrics_table <- lyrics_table |>
                  filter(count != 1)

lyrics_plot <- ggplot(as.data.frame(lyrics_table), aes(x=word, y=count)) + geom_col()
ggsave('lyrics.png', plot=lyrics_plot)

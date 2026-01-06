library("tidyverse")


plot <- ggplot(women, aes(x=height, y=weight)) +
  geom_point() +
  geom_line() +
  labs(
    x = "Height (in)",
    y = "Weight (lb)",
    title = "Average Height/Weight Relationship for American Women"
  )


ggsave('visualization.png', plot=plot)
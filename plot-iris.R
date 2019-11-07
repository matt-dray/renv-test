# Load packages
library(dplyr)
library(ggplot2)

# Filter for particular iris species 
iris_filter <- iris %>% 
  filter(Species %in% c("setosa", "versicolor"))

# Plot petal by sepal width and colour by species
iris_plot <- ggplot(
  iris_filter,
  aes(
    x = Sepal.Width,
    y = Petal.Width,
    colour = Species
  )
) +
  geom_point()

# Print plot
iris_plot

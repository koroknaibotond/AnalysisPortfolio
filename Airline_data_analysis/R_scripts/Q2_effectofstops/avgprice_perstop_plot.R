ggplot(data = average_prices_and_stops) +
  geom_col(mapping = aes(x = airline, y = Average_Price, fill = airline)) + # Aesthetically pleasing colors
  facet_wrap(~stops, scales = "free_x") + # Use facets to separate plots by stops
  labs(
    x = "Airline Name",
    y = "Average Price (Indian Rupees)",
    title = "Average Flight Price by Airline and Number of Stops",
    fill = "Airline" # Add a legend title
  ) +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold", family = "serif"),
    axis.title.x = element_text(size = 12, face = "italic", color = "darkblue", family = "sans"),
    axis.title.y = element_text(size = 12, face = "italic", color = "darkblue", family = "sans"),
    axis.text.x = element_text(size = 8, color = "black", family = "mono", angle = 45, hjust = 1), # Rotate text
    axis.text.y = element_text(size = 8, color = "black", family = "mono"),
    legend.position = "None" # Move legend to the bottom
  )

ggplot(data = average_prices) +
  geom_col(mapping = aes(x = airline, y = Average_Price),
           fill = "steelblue") +
  labs(
    x = "Airline Name",
    y = "Average Price (Indian Rupees)",
    title = "Average Flight Price by Airline"
  ) +
  theme(
    # Style for the main plot title
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold", family = "serif"),
    
    # Style for the axis labels (titles)
    axis.title.x = element_text(size = 12, face = "italic", color = "darkblue", family = "sans"),
    axis.title.y = element_text(size = 12, face = "italic", color = "darkblue", family = "sans"),
    
    # Style for the tick labels (the text on the axes)
    axis.text.x = element_text(size = 7, color = "black", family = "mono"),
    axis.text.y = element_text(size = 8, color = "black", family = "mono")
  )

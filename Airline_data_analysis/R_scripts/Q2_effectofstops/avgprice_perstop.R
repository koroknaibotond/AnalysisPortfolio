average_prices_and_stops <- flight_data %>%
  group_by(airline, stops) %>% 
  summarise(
    Average_Price = mean(price, na.rm = TRUE)
  ) %>%
  arrange(desc(Average_Price))

print(average_prices_and_stops) 

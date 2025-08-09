delhi_mumbai_flights <- flight_data %>%
  filter(source_city == "Delhi", destination_city == "Mumbai")

average_prices_same_category <- delhi_mumbai_flights %>%
  group_by(departure_time, airline) %>%
  summarise(
    Average_Price = mean(price, na.rm = TRUE)
  ) %>%
  arrange(departure_time, airline)

average_prices <- flight_data %>%
  group_by(airline) %>%
  summarise(
    Average_Price = mean(price, na.rm = TRUE)
  ) %>%
  arrange(desc(Average_Price))

print(average_prices)



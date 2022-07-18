library(tidyquant)
library(quantmod)
library(ggplot2)
aapl <- tq_get('AAPL',
               from = "2017-01-01",
               to = "2018-03-01",
               get = "stock.prices")
aapl %>%
  ggplot(aes(x = date, y = adjusted)) +
  geom_line() +
  theme_classic() +
  labs(x = 'Date',
       y = "Adjusted Price",
       title = "Apple price chart") +
  scale_y_continuous(breaks = seq(0,300,10))

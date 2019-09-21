data <- read.csv(file = "JPM.csv")
avg_price <- mean(data$Adj.Close)
daily_return <- (data$Adj.Close[(2:n)] - data$Adj.Close[(1:n-1)])/(data$Adj.Close[(2:n)])
volatility <- sd(daily_return)
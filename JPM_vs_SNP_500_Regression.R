
#'3.1 Regression and Univariate Analysis

#'3.1.3 Basic Statistics

data <- read.csv(file = "JPM.csv")
n <- length(data$Adj.Close)
avg_price <- mean(data$Adj.Close)
daily_return <- (data$Adj.Close[(2:n)] - data$Adj.Close[(1:n-1)])/(data$Adj.Close[(2:n)])
volatility <- sd(daily_return)

paste("avg_price is",avg_price)
paste("avg_daily return is", mean(daily_return))
paste("stock volatility is",volatility)
#'3.1.3 Linear Regression
DF1 <- read.csv(file = "GSPC.csv")
DF2 <- read.csv(file = "JPM.csv")

#'Comment 

names(DF1)[6]<-"SNP_Adjusted_Close"
names(DF2)[6]<-"JPM_Adjusted_Close"

Data2 <- merge(DF1,DF2,by="Date")
cor(Data$SNP_Adjusted_Close, Data2$JPM_Adjusted_Close)
Model1 <- lm(formula = JPM_Adjusted_Close ~ SNP_Adjusted_Close, data = Data2)
summary(Model1)


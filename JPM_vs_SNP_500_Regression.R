DF1 <- read.csv(file = "GSPC.csv")
DF2 <- read.csv(file = "JPM.csv")

names(DF1)[6]<-"SNP_Adjusted_Close"
names(DF2)[6]<-"JPM_Adjusted_Close"

Data <- merge(DF1,DF2,by="Date")
cor(Data$SNP_Adjusted_Close, Data$JPM_Adjusted_Close)
Model1 <- lm(formula = JPM_Adjusted_Close ~ SNP_Adjusted_Close, data = Data)
summary(Model1)

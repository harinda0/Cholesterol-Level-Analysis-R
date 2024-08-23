#Load Dataset
CholestrolLevel

#View Dataset
View(CholestrolLevel)

#View first few lines of dataset
head(CholestrolLevel)

#View key information of dataset
str(CholestrolLevel) 

#Mean
mu <- mean(CholestrolLevel$After)
mu

#Standard Deviation
sd <- sd(CholestrolLevel$After)
sd

#Calculate z parameters
mu0 <- 5.95 # Specify the mean
alpha <- 0.05 # Specify the significance level
sigma <- 0.897 # population standard deviation
n <- nrow(CholestrolLevel) # get the sample size

#Calculate z
z<-(mu-mu0)/(sigma/sqrt(n))
z

#Calculate p-value
2*pnorm(abs(z),lower.tail=FALSE)


setwd("C:\\Users\\IT24100059\\Desktop\\IT24100059-Lab06")

dbinom(40,44,0.92)

pbinom(35,44,0.92,lower.tail=TRUE)

1- pbinom(37,44,0.92,lower.tail=TRUE)
pbinom(37,44,0.92,lower.tail=FALSE)

dpois(6,5)

ppois(6,5,lower.tail = FALSE)




# Problem 1: Binomial Distribution

# i. Distribution of X (Binomial)
# X follows a Binomial distribution as we're counting the number of successes (students passing the test) 
# in a fixed number of trials (50 students), where each trial has two outcomes (pass or fail).

n <- 50      # Number of students (trials)
p <- 0.85    # Probability of passing the test

# ii. Probability that at least 47 students passed the test
1 - pbinom(46, 50, 0.85)

# Problem 2: Poisson Distribution

# i. Distribution of X (Poisson)
# X represents the number of customer calls received in one hour.
dpois(15, 12)  #lambda=12

# ii. Probability that exactly 15 calls are received in an hour
# X follows a Poisson distribution with lambda = 12 (average calls per hour).
# i.e., X ~ Poisson(12)
dpois(15, 12)

# iii. Probability that at least 15 calls are received in an hour
ppois(15, 12, lower.tail = FALSE)
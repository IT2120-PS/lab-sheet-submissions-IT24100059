setwd("C:\\Users\\User\\Desktop\\IT24100059\\Lab 9")

#1
x<-c(3,7,11,0,7,0,4,5,6,2)
t.test(x, mu=3)

#2
#i.
weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(weight , mu=25 , alternative = "less")
#ii.
res <- t.test(weight , mu=25 , alternative = "less")
res$statistic
res$p.value
res$conf.int

#3
#i.
y <- rnorm(30, mean = 9.8, sd = 0.05)
#ii.
t.test(y , mu=10 , alternative = "greater")







#Question

#1
# i. Generate a random sample of size 25 for baking time
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

# ii. Test whether the average baking time is less than 46 minutes at 5% significance level
t.test(baking_time, mu = 46, alternative = "less")

res <- t.test(baking_time, mu = 46, alternative = "less")
res$statistic    # t-value
res$p.value      # p-value
res$conf.int     # confidence interval
res$estimate     # sample mean
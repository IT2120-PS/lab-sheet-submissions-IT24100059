setwd("C:\\Users\\IT24100059\\Desktop\\IT24100059")

data <- read.table("Data - Lab 8.txt", header=TRUE)
fix(data)
attach (data)

popmn <- mean(Nicotine)
popvar <- var (Nicotine)
samples <- c()
n <- c()

for(i in 1:30){
  s <- sample(Nicotine,5,replace=TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}

colnames(samples)=n

s.means <- apply(samples,2,mean)
s.vars <- apply(samples,2,var)

samplemean <- mean(s.means)
samplevars <- var (s.means)

popmn
samplemean

truevar=popvar/5
samplevars









#Exercise

setwd("C:\\Users\\IT24100059\\Desktop\\IT24100059")

##1
data<-read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

pop_mean <- mean(Weight.kg.)
pop_sd   <- sd(Weight.kg.)

pop_mean
pop_sd

##2
samples <- matrix(nrow = 6, ncol = 25)   
for(i in 1:25){
  samples[, i] <- sample(Weight.kg., 6, replace = TRUE)
}

colnames(samples) <- paste0("S", 1:25)

s_means <- apply(samples, 2, mean)
s_sds   <- apply(samples, 2, sd)

s_means
s_sds

##3

sample_mean <- mean(s_means)

sample_sd <- sd(s_means)

sample_mean
sample_sd

theoretical_sd <- pop_sd / sqrt(6)
theoretical_sd
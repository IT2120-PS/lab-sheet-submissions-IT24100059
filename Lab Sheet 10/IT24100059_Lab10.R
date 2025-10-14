setwd("C:\\Users\\User\\Desktop\\Lab10\\IT24100059")

#Exercise
# observed counts
observed <- c(120, 95, 85, 100)

# equal probabilities
p <- rep(1/4, 4)

# chi-square goodness-of-fit test
chisq.test(x = observed, p = p)

#Conclusion
#Level of significance: 5% (?? = 0.05).

#Decision rule: Reject H??? if p-value < 0.05.

#Observed p-value: ??? 0.0897.

#Decision: p-value (0.0897) > 0.05 ??? Do not reject H??? at the 5% level.

#Conclusion: There is not enough evidence at the 5% level to conclude that customers choose the snack types
#with unequal probabilities. In other words, the data do not provide strong evidence against the owner's claim
#of equal choice probabilities.



#Q1

#i.
observed <- c(55, 62, 43, 46, 50)
prob <- c(.2, .2, .2, .2, .2)
#To conduct the test "chisq.test" 
chisq.test(x=observed, p=prob)


#Q2

#i.
file_path <- "http://www.sthda.com/sthda/RDoc/data/housetasks.txt" 
housetasks <- read.delim(file_path, row.names = 1)


#ii.
chisq <- chisq. test(housetasks) 

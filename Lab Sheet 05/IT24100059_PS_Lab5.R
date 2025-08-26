setwd("C:\\Users\\it24100059\\Desktop\\IT24100059")

data <- read.table("Data.txt",header=TRUE, sep = ",")
fix(data)
attach (data)

names (data) <- c("x1","X2")
attach (data)
hist(X2,main="Histogram for Number of Shareholders")


histogram <- hist(X2,main="Histogram for Number of Shareholders",breaks = seq(130, 270, length = 8), right = FALSE)
?hist

##Part 3
##Assign class limits of the frequency distribution into a variable called "breaks"
breaks <- round(histogram$breaks)
##Assign class frequencies of the histogram into a variable called "freq"
freq <- histogram$counts
##Assign mid point of each class into a variable called "mids"
mids <- histogram$mids

##Creating the variable called "Classes" for the frequency distribution
classes <- c()

##Creating a "for" loop to assign classes of the frequency distribution into "Classes" variable crated above.
for(i in 1:length (breaks)-1){
  classes [i] <- paste0("[", breaks [i], ",", breaks [i+1], ")")
}  
  ##Obtaining frequency distribution by combining the values of "Classes" & "freq" variables
  ##"cbind" command used to merge the columns with same length
  cbind(Classes = classes, Frequency = freq)
  
  
  ##Part 4
  ##Draw frequency polygon to the same plot.
  lines (mids, freq)
  
  ##Draw frequency polygon in a new plot.
  plot(mids, freq, type = 'l', main = "Frequency Polygon for Shareholders",xlab = "Shareholders", ylab = "Frequency", ylim = c(0,max(freq)))
  
  ##Part 5
  ##Using "cumsum" command we can get cumulative frequencies
  cum.freq <- cumsum(freq)
  
  ##Creating a null variable called "new"
  new <- c()
  ##Using "for" loop to store cumulative frequencies in order to get the ogive
  for(i in 1:length (breaks) ) {
    if(i == 1){
      new[i]= 0
      }else{
        new[i]= cum.freq[i-1]
        
      }
  }
    
    ##Draw cumulative frequency polygon in a new plot
    plot(breaks, new, type = 'l', main = "Cumalative Frequency Polygon for Shareholders",
         xlab = "Shareholders", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))
    ##Obtain upper limit of each class along with its cumulative frequency in a table
    cbind (Upper = breaks, CumFreq = new)
    
    
    
    
    
    
####Exercise####
setwd("C:\\Users\\it24100059\\Desktop\\IT24100059")
 
#1.       
delivery_times <- read.table("Exercise - Lab 05.txt",header=TRUE, sep = ",")
names(delivery_times)[1]  <- "DeliveryTime"
head(delivery_times)

#2.
#Define 9 equal intervals
breaks <- seq(20, 70, lenght.out = 10)

# Create histogram with specific class intervals
hist(delivery_times$DeliveryTime, 
     breaks=breaks,
     right=FALSE,
     main="Histogram of Delivery Times", 
     xlab="Delivery Time", 
     ylab="Frequency", 
     col="lightblue", 
     border="black", 
     )

#3.The distribution of delivery times is roughly symmetric with a slight right skew. Most deliveries take between 35 and 55 minutes

#4.
# Calculate cumulative frequencies
delivery_times_freq <- hist(delivery_times$DeliveryTime, 
                            breaks=seq(20, 70, by=5), 
                            plot=FALSE)
cumulative_freq <- cumsum(delivery_times_freq$counts)

# Plot cumulative frequency polygon (ogive)
plot(delivery_times_freq$mids, cumulative_freq, type="o", 
     col="blue", xlab="Delivery Time", ylab="Cumulative Frequency", 
     main="Cumulative Frequency Polygon (Ogive)")



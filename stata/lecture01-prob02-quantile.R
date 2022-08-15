# Project:	Econometrics
# Author :  Le Wang

# This program illustrates how to empirically invert
# the CDF to obtain quantiles

# Write a function to calculate CDF 
  mycdf <- function(x){
    
    data <- c(1:6000)
    return(mean(data <= x))
    
  }

# Calculate the CDF for every possible value in the data
  cdf <- sapply(c(1:6000), mycdf)
  data <- c(1:6000)

# Find out the minimum of the data with CDF greater than 
# or equal to 0.5
  min(data[cdf >=.5])

# Compare it to the default -quantile()-
  quantile(data, type =1)

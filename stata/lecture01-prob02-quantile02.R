# Project:	Econometrics
# Author :  Le Wang

# This program illustrates how to empirically invert
# the CDF to obtain quantiles

# Generate a sample of 1000 observations normally distributed
  set.seed(123456)
  data <- rnorm(1000)

# Write a function to calculate CDF 
  mycdf <- function(x){
    
    return(mean(data <= x))
    
  }

# Calculate the CDF for every possible value in the data
  cdf <- sapply(data, mycdf)


# Find out the minimum of the data with CDF greater than 
# or equal to 0.5
  min(data[cdf >=.5])

# Compare it to the default -quantile()-
quantile(data, type =1)

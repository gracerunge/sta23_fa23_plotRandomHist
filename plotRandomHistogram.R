#* plotRandomHistogram.R
#*  
#*  Author: Grace Runge
#*  
#*  Purpose: A function that will generate a sample of 
#*           normal "observations" and plot a histogram 
#*           of the data 
#*  
#*  Inputs: 
#*     num_pts = the number of observations to generate (random)
#*     mu = the theoretical mean of the normal 
#*     sigma = the theoretical standard deviation of the normal
#*     seed = a random number generation seed to ensure reproducibility 
#*  
#*  Outputs:
#*     a plot of the histogram is provided 
#*     a list with the following elements:
#*        Random_Values = a vector with the generated values 
#*        Mean_Random_Values = corresponding sample mean 
#*        SD_Random_Values = corresponding standard deviation 
#*  


plotRandomHistogram <- function(num_pts=30, mu=0, sigma=1, 
                                seed=NULL, meanColor = "royalblue") {
  set.seed(seed)
  x<-rnorm(n=num_pts, mean=mu, sd=sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x, col=meanColor, lwd=5)
  
  # The last line of code in the function is output from the function 
  list(Random_values = x, 
       Mean_Random_Values = mean_x, 
       SD_Random_Values = sd(x))
} 


plotRandomHistogram()
plotRandomHistogram(seed = 1, num_pts = 1000000000) #mean now on the theoretical bc the law of large samples 
plotRandomHistogram(seed = 1, meanColor='hotpink') 


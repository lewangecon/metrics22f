* Ph.D Econometrics 
* Le Wang

* Monte Carlo Simulation
* This program illustrates the inverse transform method

* Clear whatever is in the memory
	clear

* Set the seed number so that everything below is reproducible.
	set seed 123456

* Set the number of observations
	set obs 10000


* Approach 1: Inverse Transform Method
	* Step 1. Simulate uniformly distributed variables
	g u = runiform()
	
	* Step 2. Put it through quantile function/inverse CDF
	g x = -ln(1-u)/1

* Approach 2: Built-in Stata random number generator
	g x2 = rexponential(1)
	
* Compare the random variables generated from both approaches
	twoway (kdensity x) (kdensity x2)


* Another value of parameter	
	
* Approach 1: Inverse Transform Method
	* Step 1. Simulate uniformly distributed variables
	g u = runiform()
	
	* Step 2. Put it through quantile function/inverse CDF
	g x = -ln(1-u)/(0.5)

* Approach 2: Built-in Stata random number generator
*             Note that you need to take the inverse of the 
*             parameter value, which is how it is defined in Stata
	g x2 = rexponential(2)
	
* Compare the random variables generated from both approaches
	twoway (kdensity x) (kdensity x2)	

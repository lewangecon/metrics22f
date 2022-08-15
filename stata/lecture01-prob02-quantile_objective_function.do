* Ph.D Econometrics 
* Le Wang


* This program illustrates a simple numerical example
* in which the asymmetric errror function leads to
* a particular quantile.


clear
set obs 9
g x = _n

* The 80th percentile is 8


* Let's see if changing from 8 can reduce the total error
* defined by 
* .8 if error greater than 0
* .2 if error less than 0

g error8 = x - 8

g error9 = x - 9

g error7 = x - 7

g error6 = x - 6

forvalues i = 6/9{

	g sum`i' = ((error`i'>=0)*.6 + (error`i'<0)*.4)*abs(error`i')

}

browse


* To check if 8 indeed minimizes the total error
forvalues i = 6/9{

	g totalsum`i' = sum(sum`i')

}




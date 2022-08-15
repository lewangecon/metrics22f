* Ph.D Econometrics 
* Le Wang


* This program illustrates how we can calculate the quantile
* using our own definition. 

*************************************************
* Example 1: Simple one with only 5 observations
*************************************************

* Generate five observations
	set obs 5
	g var1 = _n

* Stata command	to calculate median
	sum var1, detail

* Manual way to calculate median
* Step 1. Sort data
	sort var1

* Step 2. 
	g position = _n
	g sum = sum(_n>2.5)

	list var1 if sum == 1


*************************************************
* Example 2: More observations and Use -qreg()-
*************************************************
	
	
clear
set obs 999
g var1 = _n

* Approach 1: From the definition
* Step 1. Sort data
	sort var1

* Step 2. 
	g position = _n
	g sum = sum(_n>999*.5)

	list var1 if sum == 1

* Approach 2: Qreg 
	qreg var1

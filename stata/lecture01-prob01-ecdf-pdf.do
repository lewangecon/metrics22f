* Project:	Econometrics
* Author :  Le Wang

* This program is to illustrate how to estimate
* 1) CDF
* 2) PMF

* Read in our data
	webuse auto,clear

* Lets look at what we have in our dataset
	de
	
* Lets look at foeign, which is a discrete variable
	tab foreign
	
	* lets look at the numeric value for each category
	tab foreign, nolabel
	
* Empirical CDF

	* Pr[X <= 0]
	
	g Ix0 = foreign <= 0
	egen sum = sum(Ix0)
	
	count 
	return list
	di sum/r(N)
	
	* which is nothing but 
	di sum/74
	
	
* Empirical PMF

	* Pr[X = 0]
	
	* We need to drop the variables if they have already been defined
	
	drop Ix0 sum
	
	g Ix0 = foreign == 0
	egen sum = sum(Ix0)
	
	count 
	di sum/r(N)

	
	
	

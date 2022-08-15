* Project:	Econometrics
* Author :  Le Wang

* This program illustrates how to empirically invert
* the CDF to obtain quantiles

clear

* Generate data from 1:6000
	set obs 6000
	g data = _n

* Calculate empirical CDF for every value in the data
* instead programming it as we did from last example	
	cumul data, gen(ecd)
	sort ecd

* Select only the values with CDF greater than the
* select quantile value

	g indicator = (ecd >=0.5)
	keep if indicator == 1
	
* Finding the inf or minimum here
	
	di data[1]

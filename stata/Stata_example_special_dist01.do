* Ph.D Econometrics 
* Le Wang

* Special Distribution: Normal Distribution

* 1. From Normal to Standard Normal
* 2. From Standard Normal to Normal



* From normal to standard normal
* generate y with mean 1 and sd 2

	clear
	set seed 123456
	set obs 10000
	
	g y = rnormal(1, 2)
	sum y
	g z = (y-r(mean))/r(sd)

	twoway (kdensity y) (kdensity z)

	
* From standard normal to normal
	clear
	set seed 123456
	set obs 10000
	
	* default: standard normal
	g z = rnormal()
	
	g y = z*2 + 1
	
	
	twoway (kdensity y) (kdensity z)

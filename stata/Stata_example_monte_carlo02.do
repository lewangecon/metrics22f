* Ph.D Econometrics 
* Le Wang

* Monte Carlo Simulation
* This program illustrates Monte Carlo Integration

* Example 1: x distributed with uniform between 0 and 1
* \int x^3 dx = 0.25


	clear
	set seed 123456
	set obs 100000

	g x = runiform()

	g gx = x^3

	sum gx

	
* Example 2: x distributed with uniform between 1 and 3
* \int (x^2+x) dx

	clear
	set seed 123456
	set obs 10000

	g x = runiform(1,3)

	g gx = 2*(x^2 + x)

	sum gx

	
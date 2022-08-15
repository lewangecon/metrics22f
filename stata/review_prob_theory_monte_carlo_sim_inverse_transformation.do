* Econ 5043: Advanced Econometrics
* Le Wang

* This program is to illustrate inverse transform sampling

	clear
	set obs 10

	set seed 1
	
	g x = rnormal()
	g y = rnormal()
	g z = rnormal()
	
	clear
	set obs 10

	set seed 123456
	g x = rnormal()
	
	
	* Approach 1: Generate a normal distribution
	g y = rnormal()
	hist y, normal
	
	* Approach 2: Inverse Transform Sampling
	* Think of this variable as probabilities between 0 and 1
	g u = runiform()
	
	* Generate inverse if the CDF is invertable analytically
	g x = invnormal(u)
	
	hist x, normal
	
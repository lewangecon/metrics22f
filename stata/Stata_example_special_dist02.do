* Ph.D Econometrics 
* Le Wang

* Special Distribution: Chi-squared distribution
* Sample Variance

* As seen in class, this result depends on the assumption
* of normally distributied variables.


set more off
set seed 123456


set matsize 10000
matrix number = J(1000,1,.)

forvalues i = 1/1000{

	clear
	set obs 100
	g x = rnormal()
	
	sum x
	
	matrix number[`i',1] = (100-1)*r(Var)/1

}

clear

svmat number
kdensity number

g x = rchi2(99)


twoway (kdensity number) (kdensity x)


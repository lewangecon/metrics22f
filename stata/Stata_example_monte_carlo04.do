* Ph.D Econometrics 
* Le Wang

* Example of the sum of the roll of two dice. 
* Enders (3e) p.204

clear
set obs 10000
set seed 123456
g x1= uniform()
g x2= uniform()

g v1 = 1 if x1>=0 & x1<=1/6
	replace v1 = 2 if x1>1/6 & x1<=2/6
	replace v1 = 3 if x1>2/6 & x1<=3/6
	replace v1 = 4 if x1>3/6 & x1<=4/6
	replace v1 = 5 if x1>4/6 & x1<=5/6
	replace v1 = 6 if x1>5/6 & x1<=6/6

/* More efficient loops 
cap drop v1
g v1 = 1 if x1>=0 & x1<=1/6
	
forvalues i = 1/5{

	local j = `i' + 1
	replace v1 = `i'+1 if x1 > `i'/6 & x1 <= `j'/6

}
	*/


g v2 = 1 if x2>=0 & x2<=1/6
	replace v2 = 2 if x2>1/6 & x2<=2/6
	replace v2 = 3 if x2>2/6 & x2<=3/6
	replace v2 = 4 if x2>3/6 & x2<=4/6
	replace v2 = 5 if x2>4/6 & x2<=5/6
	replace v2 = 6 if x2>5/6 & x2<=1
	
g sum = v1 + v2

count
	local N = r(N)
forvalues i = 2/12{
	qui count if sum == `i'
	di "Sum" `i' _col(15)   		 ///
	   "Sample: " r(N)/`N'  _col(35) ///
	   "Population:  " (6/36-abs(7-`i')/36)
}

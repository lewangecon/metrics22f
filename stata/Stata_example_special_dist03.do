* Ph.D Econometrics 
* Le Wang


* This program is to graph varios commonly used distributions
* understand their properties and the relations among them

* Density Functions

* Standard Uniform Distribution: [0,1]
clear   
set obs 3000

g x = -1 + (_n-1)/1000
g density = 0 if x<0
	replace density = 1 if x>=0 & x<=1
	replace density = 0 if x>1

twoway bar density x, bartype(spanning) bstyle(histogram)


			 

* Normal Distribution
#delimit ;
graph twoway (function y=normalden(x,1,2), range(-10 20) lw(medthick))
             (function y=normalden(x,5,3), range(-10 20) lw(medthick)),
  title("Normal-Distribution comparison")
  xtitle("Normal", size(medlarge)) ytitle("")
  xlabel(-10(2)20)
  xscale(lw(medthick)) yscale(lw(medthick))
  legend(off)
  graphregion(fcolor(white));
#delimit cr

*t Distribution

#delimit ;
graph twoway (function y=tden(1,x), range(-3 3) lw(medthick))
			 (function y=tden(2,x), range(-3 3) lw(medthick))
             (function y=tden(3,x), range(-3 3) lw(medthick))
             (function y=tden(4,x), range(-3 3) lw(medthick)) 
             (function y=tden(5,x), range(-3 3) lw(medthick)),
  title("t-Distribution comparison")
  xtitle("t", size(medlarge)) ytitle("")
  xlabel(-3(1)3)
  xscale(lw(medthick)) yscale(lw(medthick))
  legend(off)
  graphregion(fcolor(white));
#delimit cr


*Normal vs t Distribution

#delimit ;
graph twoway (function y=normalden(x,0,1), range(-3 3) lw(medthick))
             (function y=tden(4,x), range(-3 3) lw(medthick)),
  title(" Normal vs. t-Distribution comparison")
  xtitle("t", size(medlarge)) ytitle("")
  xlabel(-3(1)3)
  xscale(lw(medthick)) yscale(lw(medthick))
  legend(off)
  graphregion(fcolor(white));
#delimit cr


* Further examination of "fat tail"

di normalden(3)
di tden(1,3)

di normalden(-3)
di tden(1,-3)



* Chi-squared Distribution

#delimit ;
graph twoway (function y=chi2den(1,x), range(0 15) lw(medthick))
			 (function y=chi2den(2,x), range(0 15) lw(medthick))
             (function y=chi2den(3,x), range(0 15) lw(medthick))
             (function y=chi2den(4,x), range(0 15) lw(medthick)) 
             (function y=chi2den(5,x), range(0 15) lw(medthick)),
  title("Chi-squared-Distribution comparison")
  xtitle("Chi-squared", size(medlarge)) ytitle("")
  xlabel(0(1)15)
  xscale(lw(medthick)) yscale(lw(medthick))
  legend(off)
  graphregion(fcolor(white));
#delimit cr

* F Distribution

#delimit ;
graph twoway (function y=Fden(1,2,x), range(0 15) lw(medthick))
             (function y=Fden(4,2,x), range(0 15) lw(medthick)) 
             (function y=Fden(8,2,x), range(0 15) lw(medthick)),
  title("F-Distribution comparison")
  xtitle("F", size(medlarge)) ytitle("")
  xlabel(0(1)15)
  xscale(lw(medthick)) yscale(lw(medthick))
  legend(off)
  graphregion(fcolor(white));
#delimit cr

* Relationship between t and standard normal
di t(1,1)
di t(10,1)
di t(100,1)
di t(1000,1)
di t(10000,1)

di normal(1)


* Relationship between F and Chi-square
* chi-squared = (numerator degrees of freedom) * F

* For instance, if you tell me that you have an F(2,71) = 2.05, 
* the corresponding chi-squared is 2 * 2.05 = 4.1. The CDF should
* be virtually the same

di F(2,150,2.05)
di F(2,250,2.05)
di F(2,1000,2.05)
di F(2,100000,2.05)
di chi2(2,2.05*2)










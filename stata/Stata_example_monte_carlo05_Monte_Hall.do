* Ph.D Econometrics 
* Le Wang

* This program illustrate the Monte Hall Problem

clear
set seed 123456
set obs 10000

g u = runiform()
g prize = 1 if u <=1/3
	replace prize = 2 if u> 1/3 & u <=2/3
	replace prize = 3 if u> 2/3
	
g reveal = (runiform()>=.5) + 2 if prize == 1
	replace reveal = 3 if prize == 2
	replace reveal = 2 if prize == 3
	
g switch = 3 if prize == 1 & reveal == 2
	replace switch = 2 if prize == 1 & reveal == 3
	replace switch = 2 if prize == 2 & reveal == 3
	replace switch = 3 if prize == 3 & reveal == 2
	
g win = switch == prize

tab win
	

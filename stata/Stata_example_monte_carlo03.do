* Ph.D Econometrics 
* Le Wang

* Illustrate how to simulate a coin toss

clear
set obs 100000
set seed 123456
g x1= runiform()


g x = (x1<=.5)

sum x

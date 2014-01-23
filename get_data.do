* Load data
use http://www.ats.ucla.edu/stat/stata/notes/hsb1, clear

* Do data cleaning, create variables, whatevs.

* Save the data
saveold "Data/data.dta", replace

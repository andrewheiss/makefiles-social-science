* Load data
use "Data/data.dta", clear

* Simple model
regress read write
outreg2 using Output/table_1.doc, se dec(5) title(Sample models) ctitle(Simple model) alpha(0.001, 0.01, 0.05) replace

* Complicated model
regress read science socst math write
outreg2 using Output/table_1.doc, ctitle(Fancy model) append

# Makefiles for social scientists

Short example of using makefiles with R and Stata

## Main files

* `get_data.do`: Downloads sample data from ats.ucla.edu and saves it to a `.dta` file.
* `model.do`: Runs basic regression models on the data
* `figures.R`: Uses `ggplot2` in R to create a few figures
* `Makefile.example`: Fully working Makefile that links all these files together. We'll create this together.

## Instructions

Make sure you do the following things before we do this together:

### OS X

1. [Download R](http://cran.rstudio.com/bin/macosx/) and install it.
2. [Download RStudio](http://www.rstudio.com/ide/download/desktop) and install it.
3. [Register as an Apple Developer](https://developer.apple.com/membercenter/).
4. Download the ["Command Line Tools (OS X xxxx) for Xcode"](https://developer.apple.com/downloads/), with Lion, Mountain Lion, or Mavericks in place of xxxx. Install it.
5. Install the Stata terminal utility (Stata > Install Terminal Utility…)

### Windows

1. [Download R](http://cran.rstudio.com/bin/windows/base/) and install it.
2. [Download RStudio](http://www.rstudio.com/ide/download/desktop) and install it.
3. [Download Make for Windows](http://gnuwin32.sourceforge.net/downlinks/make.php) and install it.

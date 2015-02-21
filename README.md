c3r
===

[c3.js](http://c3js.org/) is a D3-based charting libary.

This package will provide an [htmlwidgets](http://www.htmlwidgets.org/) interface to it.

Installation
============

`devtools::install_github("harlanh/c3r")`

Usage
=====

This may literally be the only thing you can do with this so far...

```r
library(htmlwidgets)
library(c3r)
data(cars)
c3_plot(cars, "speed", "dist")

```

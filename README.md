The Netstat Package
================

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/netstat)](https://cran.r-project.org/package=netstat)
[![Travis build
status](https://travis-ci.org/stevecondylios/netstat.svg?branch=master)](https://travis-ci.org/stevecondylios/netstat)
<!-- badges: end -->

`netstat` allows you to easily view which TCP ports are in use and which
are free to use.

``` r
# install.packages("netstat")
library(netstat)
```

### See which TCP ports are currently in use with `ports_in_use()`

``` r
ports_in_use()
```

    ##  [1]   137   138  1024  1025  3722  5353  5432  8102 25288 27893 30666
    ## [12] 37086 45112 49153 49154 49155 49156 49212 49383 49738 50444 51485
    ## [23] 51496 51781 52232 52377 52629 52660 52695 53007 54826 54827 54828
    ## [34] 55161 55259 55769 56117 58170 58654 59896 60036 60051 61107 61665
    ## [45] 61666 61668 61815 62025 62226 62378 62831 62990 63962 64518 64519
    ## [56] 64544 64549 64550 64553 64554 64555 64556 64594 64631 64632 64635
    ## [67] 64712 64727 64777 64789 64822 64824 64872 64884 64886 64887 64902
    ## [78] 64903 64921 64926 64927 64930 64931 64938 64941 64943 64990 65197

### Find a free TCP port using `free_port()`

``` r
free_port()
```

    ## [1] 14415

  - `free_port()` returns an available TCP port from Internet Assigned
    Numbers Authority (IANA) listed unassigned ports.

  - `free_port()` will not return any TCP port currently in use - so
    `free_port()` can safely be used to allocate a ports
    programmatically without collisions - great for automated testing or
    browser automation in general

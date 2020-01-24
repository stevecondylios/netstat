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

    ##  [1] "23730" "55523" "45655" "12849" "55483" "55484" "55479" "55478"
    ##  [9] "55473" "55471" "55459" "55445" "55443" "55439" "55430" "10467"
    ## [17] "55149" "55036" "54938" "54913" "54902" "54898" "54845" "54844"
    ## [25] "49155" "54828" "54827" "54826" "54824" "27971" "13580" "49738"
    ## [33] "49383" "5432"  "1025"  "1024"  "45112" "30666" "49159" "49156"
    ## [41] "49154" "49153" "55507" "51979" "62106" "60186" "63708" "59480"
    ## [49] "5353"  "57549" "58386" "51128" "64194" "53821" "52458" "*"    
    ## [57] "49212" "53007" "52377" "138"   "137"

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

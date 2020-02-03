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

    ##   [1] "8102"  "61218" "37086" "61203" "61193" "61192" "61189" "61187"
    ##   [9] "61181" "61178" "61174" "61172" "61130" "61120" "61098" "61085"
    ##  [17] "61076" "61055" "61042" "61039" "61038" "61025" "60990" "60989"
    ##  [25] "60986" "60985" "60974" "60920" "60869" "60865" "60859" "60853"
    ##  [33] "60849" "60840" "60771" "60754" "60752" "60668" "60657" "60625"
    ##  [41] "60615" "60562" "60558" "24565" "60117" "59067" "57873" "57532"
    ##  [49] "57423" "57422" "57420" "57419" "57395" "57412" "64801" "1024" 
    ##  [57] "57397" "57396" "56454" "27893" "52695" "51496" "51485" "62226"
    ##  [65] "59896" "58654" "55259" "52232" "65197" "60051" "52660" "52629"
    ##  [73] "63962" "61107" "58170" "49155" "54828" "54827" "54826" "49738"
    ##  [81] "49383" "5432"  "45112" "30666" "49156" "49154" "49153" "64364"
    ##  [89] "49852" "56959" "53766" "57199" "52057" "49178" "55314" "5353" 
    ##  [97] "3722"  "63923" "*"     "62378" "49212" "53007" "52377" "138"  
    ## [105] "137"

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

The Netstat Package
================

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/stevecondylios/netstat.svg?branch=master)](https://travis-ci.org/stevecondylios/netstat)
<!-- badges: end -->

`netstat` allows you to easily view which TCP ports are in use and which
are free to use.

Load library

``` r
# library(devtools)
# install_github("stevecondylios/netstat")
library(netstat)
```

### See which TCP ports are *in use*

``` r
ports_in_use()
```

    ##   [1] "50741" "50740" "50739" "50738" "50737" "50736" "50735" "50734"
    ##   [9] "50733" "50731" "50730" "50729" "50728" "50727" "50724" "50723"
    ##  [17] "23619" "50720" "50694" "50684" "50671" "50670" "50668" "50667"
    ##  [25] "50666" "50665" "50663" "50662" "50658" "50655" "50653" "50652"
    ##  [33] "50651" "50650" "50649" "50637" "50635" "50633" "50632" "50631"
    ##  [41] "50629" "50624" "50623" "50622" "50611" "50610" "50609" "50606"
    ##  [49] "50605" "50604" "50601" "50599" "50598" "50551" "50597" "50596"
    ##  [57] "50592" "50589" "50588" "50584" "50583" "50553" "25190" "38469"
    ##  [65] "29239" "5432"  "47943" "1024"  "45112" "30666" "4381"  "49159"
    ##  [73] "49156" "49157" "49155" "49154" "49153" "49152" "50717" "49886"
    ##  [81] "61981" "50112" "59176" "52528" "55930" "52615" "51007" "54697"
    ##  [89] "53793" "58381" "60892" "64712" "5353"  "52537" "3722"  "56142"
    ##  [97] "49797" "55915" "57430" "*"     "58149" "58714" "63966" "138"  
    ## [105] "137"

### Find a free TCP port using `free_port()`.

``` r
free_port()
```

    ## [1] 14415

``` r
free_port(random=T)
```

    ## [1] 9892

  - `free_port()` returns a TCP port from Internet Assigned Numbers
    Authority (IANA) listed unassigned ports.

  - Any TCP port being used by the local machine will not be returned
    (so `free_port()` can be used to allocate a free port
    programmatically in applications without collisions)

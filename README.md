
# netstat <a href='https://github.com/stevecondylios/netstat'><img src='man/figures/netstat.png' align="right" height="139" /></a>

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

    ##  [1]   137   138  1024  5353  5432  9947 11090 12113 12441 13445 13675 18588
    ## [13] 21946 29434 30402 39333 49153 49154 49155 49156 49157 50038 50869 51223
    ## [25] 51225 51226 51233 51238 51281 51282 51285 51286 51287 51497 51882 52366
    ## [37] 52874 52953 52977 53026 53072 53253 53470 54258 54709 55143 55342 55878
    ## [49] 56063 56109 56340 56365 56566 56607 56699 56729 56730 56743 56752 56753
    ## [61] 56755 56758 56766 56852 56853 56854 56859 56860 56864 56870 56876 56877
    ## [73] 56878 56898 56907 56924 57182 57863 57958 57987 58939 59344 59457 60289
    ## [85] 60873 61825 61932 62589 63035 63561 64543 64720

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

README
================
Steve Condylios
23/12/2019

## The Netstat Package

The purpose of this package is the easily view which TCP ports are in
use and which are free to use.

Install and load the `netstat` library with

``` r
# library(devtools)
# install_github("stevecondylios/netstat")
library(netstat)
```

See which TCP ports are in use

``` r
# Display the TCP ports currently in use
ports_in_use()
```

    ##  [1] "40521" "57585" "24836" "57573" "57548" "57547" "57524" "57519"
    ##  [9] "57517" "57516" "57514" "57506" "57492" "57490" "1025"  "1024" 
    ## [17] "57482" "57475" "57473" "57468" "57460" "57454" "57347" "57343"
    ## [25] "57342" "57341" "57291" "57340" "57339" "1538"  "57292" "27117"
    ## [33] "52187" "52186" "50467" "9151"  "55630" "55628" "55626" "9150" 
    ## [41] "60380" "60379" "11170" "49154" "61086" "52156" "44617" "29956"
    ## [49] "29117" "29687" "45112" "30666" "5432"  "49157" "49156" "49155"
    ## [57] "49153" "57484" "57496" "63267" "51393" "58142" "5353"  "3722" 
    ## [65] "*"     "54261" "52802" "56947" "138"   "137"

Find a free TCP port using `free_port()`.

`free_port()` returns a TCP port from Internet Assigned Numbers
Authority (IANA) listed unassigned ports. Any TCP port being used by the
local machine will not be returned (so `free_port()` can be used for
port allocation in applications)

``` r
# Display the TCP ports currently in use
free_port()
```

    ## [1] 14415

``` r
free_port(random=T)
```

    ## [1] 5409

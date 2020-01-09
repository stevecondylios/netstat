The Netstat Package
================

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

    ##  [1] "46915" "57416" "34403" "57403" "57399" "57398" "1538"  "57194"
    ##  [9] "57191" "57190" "56557" "57188" "57187" "57184" "57183" "56558"
    ## [17] "55205" "16233" "63415" "13287" "*"     "61348" "1025"  "1024" 
    ## [25] "55651" "51313" "63238" "58336" "56395" "45112" "30666" "58154"
    ## [33] "50712" "65415" "65413" "63546" "57146" "56677" "49445" "5432" 
    ## [41] "49160" "49155" "49157" "49156" "49154" "49153" "57414" "62782"
    ## [49] "64779" "5353"  "3722"  "50695" "59848" "58010" "55522" "57882"
    ## [57] "55719" "59190" "59189" "138"   "137"

### Find a free TCP port using `free_port()`.

``` r
free_port()
```

    ## [1] 14415

``` r
free_port(random=T)
```

    ## [1] 11195

  - `free_port()` returns a TCP port from Internet Assigned Numbers
    Authority (IANA) listed unassigned ports.

  - Any TCP port being used by the local machine will not be returned
    (so `free_port()` can be used to allocate a free port
    programmatically in applications without collisions)

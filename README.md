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

    ##   [1] "40521" "61016" "29687" "61015" "24836" "61011" "60985" "60981"
    ##   [9] "60979" "60978" "60977" "60976" "60975" "60974" "60973" "60972"
    ##  [17] "60971" "60969" "60966" "60965" "60964" "60963" "60962" "60961"
    ##  [25] "60944" "60943" "60942" "60941" "60909" "60902" "60900" "60899"
    ##  [33] "60898" "60897" "60891" "60890" "60889" "60886" "60885" "60884"
    ##  [41] "60879" "60852" "60845" "60829" "60828" "60825" "60821" "60817"
    ##  [49] "60801" "60799" "60792" "60786" "60785" "60784" "60783" "60782"
    ##  [57] "60781" "60779" "60545" "60530" "60528" "60526" "60468" "60401"
    ##  [65] "60390" "60386" "60348" "60347" "60345" "60344" "60327" "60343"
    ##  [73] "60342" "60328" "58378" "58376" "1025"  "1024"  "27117" "52187"
    ##  [81] "52186" "50467" "9151"  "55630" "55628" "55626" "9150"  "60380"
    ##  [89] "60379" "11170" "49154" "61086" "52156" "44617" "29956" "29117"
    ##  [97] "45112" "30666" "5432"  "49157" "49156" "49155" "49153" "60533"
    ## [105] "60999" "55799" "5353"  "50081" "3722"  "61693" "52690" "56692"
    ## [113] "*"     "54261" "52802" "56947" "138"   "137"

### Find a free TCP port using `free_port()`.

``` r
free_port()
```

    ## [1] 14415

``` r
free_port(random=T)
```

    ## [1] 8462

  - `free_port()` returns a TCP port from Internet Assigned Numbers
    Authority (IANA) listed unassigned ports.

  - Any TCP port being used by the local machine will not be returned
    (so `free_port()` can be used for programatic port allocation in
    applications)

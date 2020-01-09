#' Obtain the TCP ports currently in use
#'
#' @name ports_in_use
#'
#' @usage ports_in_use()
#'
#' @return A character vector of the TCP ports currently in use
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   (active_ports <- ports_in_use())
#' }
#'
#'@importFrom utils tail
#'



ports_in_use <- function() {

  active_connections_table <- parse_netstat(netstat())

  os <- Sys.info()['sysname']

  switch(os,

         Windows = {
           local <- active_connections_table$Local

           sapply(strsplit(local, ":"), function(x) { tail(x, 1) } )

         },


         # Default behaviour (confirmed working for Darwin)
         {

           local_address <- active_connections_table[,4]

           # We only want whatever exists after the last dot (.)
           # E.g.
           # for 10.99.116.195.63831, we want 63831
           # for *.88, we want 88
           # for *.*, we want *

           after_last_dot <- function(local_address) {
             address_split <- strsplit(local_address, "\\.")
             address_components <- length(address_split[[1]])
             last_component <- address_split[[1]][address_components]
             #trimws(last_component)
           }

           unique(unname(sapply(local_address, after_last_dot))) # Note: may contain * (star character)

         }

         )

}




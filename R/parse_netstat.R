#' Parse the output of the 'Netstat' command line utility - obtained via netstat()
#'
#' @name parse_netstat
#'
#' @usage parse_netstat(netstat_output)
#' @param netstat_output The output of netstat() - i.e. a character
#'    vector comprising the output of the Netstat command line utility
#'
#' @return A data.frame containing the Active Internet Connections from netstat() output
#'
#' @export
#' @examples
#' \dontrun{
#'   netstat_output <- netstat()
#'   (active_connections_table <- parse_netstat(netstat_output))
#' }
#'
#' @importFrom utils read.table


parse_netstat <- function(netstat_output) {

  os <- Sys.info()['sysname']

  switch(os,
         Windows = {
           # print("retrieving windows")
           ActiveConnections <- netstat_output[-c(1:3)]


           temp <- paste0(gsub("\\s+", ",", ActiveConnections), collapse="\n")

           read.table(text = temp, sep=",", stringsAsFactors = FALSE,
                      header=TRUE, fill = TRUE) # Note header TRUE for windows
         },

         # Default behaviour (confirmed working for Darwin)

         {
           # Retrieve from the second row (since the first is a description)
           ActiveConnections <- netstat_output[3: (which(netstat_output == "Active Multipath Internet connections") - 1)]


           temp <- paste0(gsub("\\s+", ",", ActiveConnections), collapse="\n")

           read.table(text = temp, sep=",", stringsAsFactors = FALSE,
                      header=FALSE, fill = TRUE)

         }

         )

}



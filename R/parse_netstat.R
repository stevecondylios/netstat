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
         "Windows" = {
           # print("retrieving windows")
           ActiveConnections <- netstat_output[-c(1:3)]

           temp <- paste0(gsub("\\s+", ",", ActiveConnections), collapse="\n")

           read.table(text = temp, sep=",", stringsAsFactors = FALSE,
                      header=TRUE, fill = TRUE) # Note header TRUE for windows
         },

         # Default behaviour (confirmed working for Darwin)

         {
           # Retrieve from the second row (since the first is a description)
           # ActiveConnections <- netstat_output[3: (which(netstat_output == "Active Multipath Internet connections") - 1)]

           # Can we use another method to figure out where to stop?
           # How about the first row whose second value cannot be as.integer() successfully

           second_item_in_row_is_integer <- function(x) {
             second_item <- strsplit(x, "\\s+")[[1]][2]

             # Returns TRUE if can be converted to integer (FALSE otherwise)
             conv_to_int <- !is.na(suppressWarnings(as.integer(second_item)))
             conv_to_int
           }

           true_if_int <- unname(sapply(netstat_output, second_item_in_row_is_integer))

           # Locate third FALSE with which(true_if_int == FALSE)[3]

           ActiveConnections <- netstat_output[3: (which(true_if_int == FALSE)[3] - 1)]

           temp <- paste0(gsub("\\s+", ",", ActiveConnections), collapse="\n")

           read.table(text = temp, sep=",", stringsAsFactors = FALSE,
                      header=FALSE, fill = TRUE)

         }

         )

}



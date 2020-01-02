#' Retrieve the output of the netstat command line utility
#'
#' @name netstat
#'
#' @usage netstat()
#'
#' @return A character vector comprising the output of the netstat command line utility
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   netstat()
#' }
#'



netstat <- function() {
  os <- Sys.info()['sysname']

  switch(os,

         Windows = {
           # print("retrieving windows")
           system("netstat -n -a", intern = T)
         },

         # Default behaviour (confirmed working for Darwin)

         {
           # print("retrieving darwin")
           system("netstat -n -a", intern = T)
         }

         )
}




#' Retrieve the output of the 'netstat' command line utility
#'
#' @name netstat
#'
#' @usage netstat()
#'
#' @return A character vector containing the lines of the output of the
#'    'netstat' command line utility
#'
#' @export
#'
#' @keywords internal
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
           system("netstat -n -a", intern = TRUE)
         },

         # Default behaviour (confirmed working for Darwin)

         {
           # print("retrieving darwin")
           system("netstat -n -a", intern = TRUE)
         }

         )
}




#' Retrieve the output of the 'netstat' command line utility
#'
#' @name netstat
#'
#' @usage netstat()
#'
#' @return A character vector containing the lines of the output of the
#'     netstat' command line utility
#'
#' @export
#'
#' @examples
#' \dontrun{
#'    netstat()
#' }
netstat <- function() {
  os <- Sys.info()['sysname']

  switch(os,

         "Windows" = {
           # print("retrieving windows")
           # https://superuser.com/questions/1309399/change-display-language-in-windows-10-with-cmd-or-powershell-commands
           system("netstat -n -a", intern = TRUE)
         },

         # Default behaviour (confirmed working for Darwin)

         {
           # print("retrieving darwin")
           # https://unix.stackexchange.com/questions/564035/how-to-be-certain-of-running-linux-command-in-english?noredirect=1#comment1048762_564035
           # LANG=C LANGUAGE=C netstat -n -a
           # Reverted after parsing in parse_netstat() altered
           system("netstat -n -a", intern = TRUE)
         }

         )
}




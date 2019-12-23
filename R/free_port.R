#' Retrieve a TCP port that is not currently in use
#'
#' @name free_port
#'
#' @usage free_port(random)
#' @param random Boolean value that defaults to FALSE
#'
#' @return A character vector of length one
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   free_port()
#'   free_port(random = T)
#' }
#'




# Allocate a port
free_port <- function(random = F) {

  in_use <- sort(ports_in_use())
  unassigned <- sort(unassigned_ports())

  if(random == F) {
    port <- unassigned[!unassigned %in% in_use][1]
  }

  if(random == T) {
    port <- sample(unassigned[!unassigned %in% in_use][1],1)
  }
  port
}



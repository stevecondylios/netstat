#' Retrieve a Transmission Control Protocol (TCP) port that is not currently in use
#'
#' @name free_port
#'
#' @usage free_port(random)
#' @param random Boolean value that defaults to FALSE
#'
#' @return An integer vector of length one
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   free_port()
#'   free_port(random = TRUE)
#' }
#'




# Allocate a port
free_port <- function(random = FALSE) {

  in_use <- sort(ports_in_use())
  unassigned <- sort(unassigned_ports())

  if(random == FALSE) {
    port <- unassigned[!unassigned %in% in_use][1]
  }

  if(random == TRUE) {
    port <- sample(unassigned[!unassigned %in% in_use][1],1)
  }
  port
}



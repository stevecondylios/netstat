#' Retrieve many (not all) Transmission Control Protocol (TCP) ports that are not currently in use
#'
#' @name free_ports
#'
#' @usage free_ports()
#'
#' @return An integer vector
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   free_ports()
#' }
#'



free_ports <- function() {

  in_use <- sort(ports_in_use())
  unassigned <- sort(unassigned_ports())


  unassigned[!unassigned %in% in_use]

}



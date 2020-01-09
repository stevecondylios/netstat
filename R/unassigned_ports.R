#' Obtain a list of the largest ranges of unassigned Transmission Control Protocol (TCP)
#'     ports as provided by the Internet Assigned Numbers Authority (IANA)
#'
#' @name unassigned_ports
#'
#' @usage unassigned_ports()
#'
#' @return A character vector comprising unassigned Transmission Control Protocol (TCP) ports
#'     provided by the
#'     Internet Assigned Numbers Authority (IANA). Note that not all unassigned ports will
#'     necessarily be returned.
#'
#' @export
#'
#' @examples
#' \dontrun{
#'   unassigned_ports()
#' }
#'


unassigned_ports <- function() {
  # List of (some, not all) IANA unassigned TCP port ranges
  # https://stackoverflow.com/a/28369841/
  c(
    29170:29998,
    38866:39680,
    41798:42507,
    43442:44122,
    46337:46997,
    35358:36000,
    36866:37474,
    38204:38799,
    33657:34248,
    30261:30831,
    41231:41793,
    21011:21552,
    28590:29117,
    14415:14935,
    26490:26999
  )
}

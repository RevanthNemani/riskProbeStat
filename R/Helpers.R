# Helper Function

## autocorrelation helper functions --------------------

#' AutoGrade
#'
#' Function to grade autocorrelation result
#'
#' Call via \code{AutoGrade(x)}
#'
#' @param x the auto correlation value
#'
#' @return numeric
#'
#' @author Revanth Nemani, \email{raynemani@gmail.com}
#'
#' @export
AutoGrade <- function(x) {
  if (x <= 10) {
    return(5)
  }
  if (x > 10 & x <= 20) {
    return(4)
  }
  if (x > 20 & x <= 40) {
    return(3)
  }
  if (x > 40 & x <= 50) {
    return(2)
  }
  if (x > 50) {
    return(1)
  }
}

#' AutoGradeDescription
#'
#' Function to give description of autocorrelation result
#'
#' Call via \code{AutoGradeDescription(x)}
#'
#' @param x the auto correlation value
#'
#' @return numeric
#'
#' @author Revanth Nemani, \email{raynemani@gmail.com}
#'
#' @export
AutoGradeDescription <- function(x) {
  if (x > 50) {
    return("Fail")
  }
  if (x > 40 & x <= 50) {
    return("Watchlist")
  }
  if (x <= 40) {
    return("Pass")
  }
}




## KS helper functions --------------------

#' AutocorrelationFunction
#'
#' Function to calculate Autocorrelation
#'
#' Call via \code{AutocorrelationFunction(...)}
#'
#' @param stat.data the dataset name as string
#' @param dependent.variable the dependent variable column name as string
#'
#' @importFrom stats acf lm
#'
#' @return numeric
#'
#' @author Revanth Nemani, \email{raynemani@gmail.com}
#'
#' @export
AutocorrelationFunction <- function(stat.data = NULL,
                                    dependent.variable = NULL){
  #deparse(substitute(stat.data))
  fit <- eval(parse(text = sprintf(
    'stats::lm(%s ~ ., data = %s)', dependent.variable, stat.data
  )))
  autocorrelation.result <- stats::acf(fit$residuals)
  autocorrelation.value <- abs((autocorrelation.result$acf[2])*100)

  return(autocorrelation.value)
}

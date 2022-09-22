#' @title Partial moments for the Exponential Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Exponential distribution with parameter \code{rate}
#' (i.e., mean \code{1/rate}).
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2\}}. Default is 1.
#' @param rate vector of rates.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details For more details check \link[dexp].
#' @return Numeric value or vector with the moments.
#' @rdname hexp
#' @export
hexp <- function(x, order = 1, rate = 1, lower.tail = TRUE){

  if(order == 1){
    return(1/rate * pgamma(x, shape = 2, scale = 1/rate,
                           lower.tail=lower.tail))
  }

  if(order == 2){
    return(2/rate^2 * pgamma(x, shape = 3, scale = 1/rate,
                             lower.tail=lower.tail))
      } else {stop('order must be 1 or 2.')}

}



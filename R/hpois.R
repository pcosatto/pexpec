#' @title Partial moments for the Poisson Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Poisson distribution with parameter \code{lambda}.
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2\}}. Default is 1.
#' @param lambda vector of (non-negative) means.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details For more details check \link{dpois}.
#' @return Numeric value or vector with the moments.
#' @rdname hpois
#' @export
hpois <- function(x,order=1, lambda, lower.tail = TRUE){

  if(lower.tail == FALSE){x <- x - 1}

  if(order == 1){
    return(lambda * ppois(x-1, lambda,lower.tail=lower.tail))
  }

  if(order == 2){
    return(lambda^2 * ppois(x-2, lambda,lower.tail) +
             lambda * ppois(x-1, lambda,lower.tail=lower.tail))
  } else {stop('order must be 1 or 2.')}
}

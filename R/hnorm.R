#' @title Partial moments for the Normal Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Normal distribution with mean equal to
#' \code{mean} and standard deviation equal to \code{sd}.
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2\}}. Default is 1.
#' @param mean vector of means.
#' @param sd vector of standard deviations.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details For more details check \link{dnorm}.
#' @return Numeric value or vector with the moments.
#' @rdname hnorm
#' @export
hnorm <- function(x, order= 1, mean = 0, sd = 1, lower.tail = TRUE){

  if(order == 1){
    z <- (x - mean)/sd
    return(mean * pnorm(z, lower.tail = lower.tail) +
             (1 - 2*lower.tail) * sd * dnorm(z))
  }

  if(order == 2){
    z <- (x - mean)/sd
    return((mean^2 + sd^2) * pnorm(z, lower.tail = lower.tail) +
             (1 - 2*lower.tail) * (x + mean) * sd * dnorm(z))
  } else {stop('order must be 1 or 2.')}

}

#' @title Partial moments for the Binomial Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Binomial distribution with parameters \code{size}
#' and \code{prob}.
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2\}}. Default is 1.
#' @param size umber of trials (zero or more).
#' @param prob probability of success on each trial.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details The Binomial distribution with parameters \eqn{n=}\code{size}
#' and \eqn{p=}\code{prob} has density:
#'
#' \deqn{p(x) = \binom{n}{x} p^x (1-p)^{n-x}}
#'
#' for \eqn{x = 0, ..., n}.
#' @return Numeric value or vector with the moments.
#'
#' If \code{size} is not an integer, NaN is returned.
#'
#' For more details check \link[dbinom].
#' @rdname hbinom
#' @export
hbinom <- function(x, order= 1, size, prob,lower.tail=TRUE){

  if(lower.tail == FALSE){x <- x - 1}

  if(order == 1){
    return(size * prob * pbinom(x-1,size-1,prob,lower.tail=lower.tail))
  }
  if(order == 2){
    return(  size * (size-1) * prob^2 *
               pbinom(x-2, size-2, prob, lower.tail) +
               size * prob * pbinom(x-1,size-1,prob,
                                    lower.tail=lower.tail))
  } else {stop('order must be 1 or 2.')}
}





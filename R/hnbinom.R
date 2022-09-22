#' @title Partial moments for the Negative Binomial Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Negative Binomial distribution with parameters
#' \code{size} and \code{prob}.
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2\}}. Default is 1.
#' @param size  target for number of successful trials, or dispersion parameter
#'  (the shape parameter of the gamma mixing distribution).
#'  Must be strictly positive, need not be integer.
#' @param prob probability of success in each trial. \code{0 < prob <= 1}.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details For more details check \link{dnbinom}.
#' @rdname hhbinom
#' @export
hnbinom <- function(x, order = 1, size, prob, lower.tail = TRUE){

  if(lower.tail == FALSE){x <- x - 1}

  if(order == 1){
    return(size / prob * pnbinom(x+1, size+1, prob, lower.tail = lower.tail))
  }

  if(order == 2){
    return(size * (size+1) / prob^2 * pbinom(x+2, size+2, prob,
                                             lower.tail = lower.tail) -
               size / prob * pnbinom(x+1, size+1, prob,
                                     lower.tail = lower.tail))
  } else {stop('order must be 1 or 2.')}

}


#' @title Partial moments for the Lognormal Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Lognormal distribution with parameters \code{meanlog}
#' and \code{sdlog}.
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2\}}. Default is 1.
#' @param meanlog,sdlog mean and standard deviation of the distribution on
#' the log scale with default values of 0 and 1 respectively.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details For more details check \link{dlnorm}.
#' @return Numeric value or vector with the moments.
#' @rdname hlnorm
#' @export
hlnorm <- function(x, order = 1, meanlog = 0, sdlog = 1, lower.tail = TRUE){

  if(order == 1){
    mu <- exp(meanlog + sdlog^2 / 2)
    z <- (log(x)-meanlog)/sdlog
    return(mu * pnorm(z - sdlog, lower.tail = lower.tail))
  }

  if(order == 2){
    mu <- exp(meanlog + sdlog^2 / 2)
    sigma2 <- exp(2*meanlog + sdlog^2) * (exp(sdlog^2) - 1)
    z <- (log(x)-meanlog)/sdlog
    return((mu + sigma2) * pnorm(z - 2 * sdlog, lower.tail = lower.tail))
  } else {stop('order must be 1 or 2.')}

 }



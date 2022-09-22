#' @title Partial moments for the Weibull Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Weibull distribution with parameters \code{shape}
#' and \code{scale}.
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2\}}. Default is 1.
#' @param shape,scale shape and scale parameters, the latter defaulting to 1.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details For more details check \link{dweibull}.
#' @return Numeric value or vector with the moments.
#' @rdname hhweibull
#' @export
hweibull <- function(x, order, shape, scale = 1, lower.tail = TRUE){
  if(order == 1){
    mu <- scale * gamma(1 + 1/shape)
    return(mu * pgamma((x / scale)^shape, shape = 1 + 1/shape,
           scale = 1, lower.tail=lower.tail))
  }

  if(order == 2){
    mu <- scale * gamma(1 + 1/shape)
    sigma2 <- scale^2 * (gamma(1 + 2/shape) + gamma(1 + 1/shape)^2)
    return((mu + sigma2) * pgamma((x / scale)^shape, shape = 1 + 2/shape
           , scale = 1, lower.tail=lower.tail))
  } else {stop('order must be 1 or 2.')}


}


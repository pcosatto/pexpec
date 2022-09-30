#' @title Partial moments for the Gamma Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Gamma distribution with parameters \code{shape}
#' and \code{scale}.
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2\}}. Default is 1.
#' @param rate an alternative way to specify the scale.
#' @param shape,scale shape and scale parameters.
#' Must be positive, \code{scale} strictly.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details For more details check \link[dgamma].
#' @return Numeric value or vector with the moments.
#' @rdname hgamma
#' @export
hgamma <- function(x, order = 1, shape, rate = 1, scale = 1/rate,
                   lower.tail = TRUE){

  if(order == 1){
    return(shape * scale * pgamma(x, shape = shape + 1, scale=scale,
                                  lower.tail=lower.tail))
  }

  if(order == 2){
    return(shape * (shape + 1) * scale^2 * pgamma(x,
                                                  shape = shape + 2, scale=scale
                                                  , lower.tail=lower.tail))
  } else {stop('order must be 1 or 2.')}

}


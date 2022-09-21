#' @title The Beta Distribution
#' @description Absolute partial moments of first and second
#' order, say \eqn{\mathbb{E}(X^k \mathbb{I}{X \in \mathcal{A}})}, with
#' \eqn{k \in \{1,2|}}, for the Beta distribution with parameters \code{shape1}
#' and \code{shape2}.
#' @param x vector of values \eqn{x}.
#' @param order the value of \eqn{k \in \{1,2|}}. Default is 1.
#' @param shape1,shape2 non-negative parameters of the Beta distribution.
#' @param lower.tail logical; if TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}, otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' \eqn{(P[X \le x]}, otherwise, \eqn{P[X > x]}.
#' @details The Beta distribution with parameters shape1 = \eqn{a} and
#' shape2 = \eqn{b} has density:
#'
#' \eqn{'f(x)=\frac{\Gamma(a+b)}{\Gamma(a)\Gamma(b)}{x}^{a-1} {(1-x)}^{b-1}%
#' f(x)=Γ(a)Γ(b)
#' Γ(a+b) x^{a−1} (1−x)^{b−1}}
#'
#' for \eqn{a > 0, b > 0} and \eqn{0 \le x \le 1} where the boundary values
#'  at \eqn{x=0} or \eqn{x=1} are defined as by continuity (as limits).
#' @rdname hbeta
#' @export
hbeta <- function(x, order = 1, shape1, shape2, lower.tail = TRUE){

  if(order == 1){
    mu <- shape1 / (shape1 + shape2)
    return(mu * pgamma(x, shape1+1, shape2, lower.tail))
  }

  if(order == 2){
    mu1 <- shape1 / (shape1 + shape2)
    mu2 <- (shape1 + 1) / (shape1 + shape2 + 1)
    return(mu1 * mu2 * pgamma(x, shape1+2, shape2, lower.tail))
  } else {stop('order must be 1 or 2.')}

}

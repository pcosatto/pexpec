#' @title Partial moments for the Hypergeometric Distribution
#' @description Returns absolute partial moments of first and second
#' order, say
#'
#' \deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}
#'
#' with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
#' \eqn{X \geq x}, for the Hypergeometric distribution.
#' @param x vector of values, representing the number of white balls
#' drawn without replacement from an urn which contains both black and white
#' balls.
#' @param m the number of white balls in the urn.
#' @param n the number of black balls in the urn.
#' @param k the number of balls drawn from the urn,
#' hence must be in \eqn{0, 1, ..., m+n}.
#' @param lower.tail logical: If TRUE (default), \eqn{\mathcal{A}} is
#' \eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.
#' @details For more details check \link{dhyper}.
#' @return Numeric value or vector with the moments.
#' @rdname hhyper
#' @export
hhyper <-function(x, order = 1, m, n, k, lower.tail = TRUE){

  if(lower.tail == FALSE){x <- x - 1}

  if(order == 1){
    return(k * m / (m+n) * phyper(x-1,m-1,n,k-1,lower.tail=lower.tail))
  }

  if(order == 2){
    return((k * m * (k-1) * (m-1)) / ((m+n) * (m+n-1)) *
      phyper(x-2,m-2,n,k-2,lower.tail=lower.tail) +
        k * m / (m+n) * phyper(x-1,m-1,n,k-1,
                               lower.tail=lower.tail))
  } else {stop('order must be 1 or 2.')}

}


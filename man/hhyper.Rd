% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hhyper.R
\name{hhyper}
\alias{hhyper}
\title{Partial moments for the Hypergeometric Distribution}
\usage{
hhyper(x, order = 1, m, n, k, lower.tail = TRUE)
}
\arguments{
\item{x}{vector of values, representing the number of white balls
drawn without replacement from an urn which contains both black and white
balls.}

\item{m}{the number of white balls in the urn.}

\item{n}{the number of black balls in the urn.}

\item{k}{the number of balls drawn from the urn,
hence must be in \eqn{0, 1, ..., m+n}.}

\item{lower.tail}{logical: If TRUE (default), \eqn{\mathcal{A}} is
\eqn{X \leq x}; otherwise,  \eqn{\mathcal{A}} is \eqn{X \geq x}.}
}
\value{
Numeric value or vector with the moments.
}
\description{
Returns absolute partial moments of first and second
order, say

\deqn{\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\}),}

with \eqn{k \in \{1,2\}} and \eqn{\mathcal{A}} either \eqn{X \leq x} or
\eqn{X \geq x}, for the Hypergeometric distribution.
}
\details{
For more details check \link{dhyper}.
}

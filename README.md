
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pexpec

<!-- badges: start -->
<!-- badges: end -->

Partial expectation of a random variable
![X](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;X "X")
over
![\\mathcal{A} \\in \\mathbb{R}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cmathcal%7BA%7D%20%5Cin%20%5Cmathbb%7BR%7D "\mathcal{A} \in \mathbb{R}")
is:

![
\\mathbb{E}(X \\ \\mathbb{I}\\{X \\in \\mathcal{A}\\})
](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%0A%5Cmathbb%7BE%7D%28X%20%5C%20%5Cmathbb%7BI%7D%5C%7BX%20%5Cin%20%5Cmathcal%7BA%7D%5C%7D%29%0A "
\mathbb{E}(X \ \mathbb{I}\{X \in \mathcal{A}\})
")

This package provides simple computations of partial expectations - and
partial expetations of
![X ^2](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;X%20%5E2 "X ^2")
as well - for the following parametric models:

-   Normal.

-   Log-Normal.

-   Exponential

-   Beta.

-   Gamma.

-   Weibull.

-   Binomial.

-   Negative Binomial.

-   Hypergeometric.

-   Poisson.

## Installation

Alpha version of 1.0 published. You can install pexpec like so:

``` r
library(devtools)
devtools::install_git('pcosatto/pexpec')
```

Please submit any comments, errors or suggestions to pcosatto@fi.uba.ar.

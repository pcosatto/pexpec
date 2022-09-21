
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pexpec

<!-- badges: start -->
<!-- badges: end -->

The partial expectation of a random variable
![X](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;X "X")
over
![\\mathcal{A}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cmathcal%7BA%7D "\mathcal{A}")
is:

![
\\mathbb{E}(X^k \\ \\mathbb{I}\\{X \\in \\mathcal{A}\\})
](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%0A%5Cmathbb%7BE%7D%28X%5Ek%20%5C%20%5Cmathbb%7BI%7D%5C%7BX%20%5Cin%20%5Cmathcal%7BA%7D%5C%7D%29%0A "
\mathbb{E}(X^k \ \mathbb{I}\{X \in \mathcal{A}\})
")

A special case is when
![k \\in \\{1,2\\}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;k%20%5Cin%20%5C%7B1%2C2%5C%7D "k \in \{1,2\}")
and
![\\mathcal{A}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cmathcal%7BA%7D "\mathcal{A}")
is either
![X \\leq x](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;X%20%5Cleq%20x "X \leq x")
or
![X \\leq x](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;X%20%5Cleq%20x "X \leq x").
This package provides simple computations of this partial expectations
for some parametric distribution models

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

This partial expectations often arise when computing expected values or
variance of truncated or transformed variables.

## Installation

Alpha version of 1.0 published. You can install pexpec like so:

``` r
library(devtools)
devtools::install_git('pcosatto/pexpec')
```

Please submit any comments, errors or suggestions to pcosatto@fi.uba.ar.

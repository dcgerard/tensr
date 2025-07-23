
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tensr, Because tensor was Already Taken <img src="man/figures/logo.png" align="right" height="138" />

<!-- badges: start -->

[![CRAN
Version](http://www.r-pkg.org/badges/version/tensr)](https://cran.r-project.org/package=tensr)
[![](http://cranlogs.r-pkg.org/badges/grand-total/tensr)](https://cran.r-project.org/package=tensr)
[![License: GPL
v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)
[![R-CMD-check](https://github.com/dcgerard/tensr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/dcgerard/tensr/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

# Description

This package contains a collection of functions for statistical analysis
with tensor(array)-variate data sets.

Let $X$ be a multidimensional array (also called a tensor) of $K$
dimensions. This package provides a series of functions to perform
statistical inference when $\text{vec}(X) \sim N(0,\Sigma)$, where
$\Sigma$ is assumed to be Kronecker structured. That is, $\Sigma$ is the
Kronecker product of $K$ covariance matrices, each of which has the
interpretation of being the covariance of $X$ along its $k$th mode, or
dimension.

Pay particular attention to the zero mean assumption. That is, you need
to de-mean your data prior to applying these functions. If you have more
than one sample, $X_i$ for $i = 1,\ldots,n$, then you can concatenate
these tensors along a $(K+1)$th mode to form a new tensor $Y$ and apply
the `demean_tensor()` function to $Y$ which will return a tensor that
satisfies the mean-zero assumption.

Details of the methods may be found in Gerard & Hoff (2015) and Gerard &
Hoff (2016). In particular, `tensr` has the following features:

- Basic functions for handling arrays, such as vectorization, matrix
  unfolding, and multilinear multiplication.
- Functions for calculating (Tucker) tensor decompositions, such as the
  incredible higher-order LQ decomposition (incredible HOLQ), the
  incredible singular value decomposition (ISVD), the incredible
  higher-order polar decomposition (IHOP), the higher-order singular
  value decomposition (HOSVD), and the low multilinear rank
  approximation using the higher-order orthogonal iteration (HOOI).
- Perform likelihood inference in mean-zero Kronecker structured
  covariance models, such as
  - Derive the maximum likelihood estimates of the covariance matrices
    under the array normal model,
  - Run a likelihood ratio test in separable covariance models, and
  - Calculate AIC’s and BIC’s for separable covariance models.
- Run a Gibbs sampler to draw from the posterior distribution of the
  Kronecker structured covariance matrix in the array normal model. This
  posterior is with respect to a (non-informative) prior induced by the
  right Haar measure over a product group of lower triangular matrices
  acting on the space of Kronecker structured covariance matrices. For
  any invariant loss function, any Bayes rule with respect to this prior
  will be the uniformly minimum risk equivariant estimator (UMREE) with
  respect to that loss.
- Calculate the UMREE under a multiway generalization of Stein’s loss.
  This estimator dominates the maximum likelihood estimator uniformly
  over the entire parameter space of Kronecker structured covariance
  matrices.
- Calculate a (randomized) orthogonally invariant estimator of the
  Kronecker structured covariance matrix. This estimator dominates the
  UMREE under the product group of lower triangular matrices.

This package is also published on
[CRAN](https://cran.r-project.org/package=tensr).

Vignettes are available on [Equivariant
Inference](https://cran.r-project.org/package=tensr/vignettes/equivariant_estimation.html)
and [Likelihood
Inference](https://cran.r-project.org/package=tensr/vignettes/maximum_likelihood.html).

# Installation

To install from CRAN, run in `R`:

``` r
install.packages("tensr")
```

To install the latest version from Github, run in `R`:

``` r
## install.packages("pak")
pak::pak("github::dcgerard/tensr")
```

# References

Gerard, D., & Hoff, P. (2016). A higher-order LQ decomposition for
separable covariance models. *Linear Algebra and its Applications*, 505,
57-84. doi: 10.1016/j.laa.2016.04.033

Gerard, D., & Hoff, P. (2015). Equivariant minimax dominators of the MLE
in the array normal model. *Journal of Multivariate Analysis*, 137,
32-49. doi: 10.1016/j.jmva.2015.01.020

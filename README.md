<!-- README.md is generated from README.Rmd. Please edit that file -->
tensr, Because tensor was Already Taken.
========================================

[![Build Status](https://travis-ci.org/dcgerard/tensr.svg?branch=master)](https://travis-ci.org/dcgerard/tensr) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/dcgerard/tensr?branch=master&svg=true)](https://ci.appveyor.com/project/dcgerard/tensr) [![CRAN Version](http://www.r-pkg.org/badges/version/tensr)](https://cran.r-project.org/package=tensr) [![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/grand-total/tensr)](http://cranlogs.r-pkg.org/badges/grand-total/tensr) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

Description
===========

This package contains a collection of functions for statistical analysis with tensor(array)-variate data sets. In particular, `tensr` has the following features:

-   Basic functions for handling arrays, such as vectorization, matrix unfolding, and multilinear multiplication.
-   Functions for calculating (Tucker) tensor decompositions, such as the incredible higher-order LQ decomposition (incredible HOLQ), the incredible singular value decomposition (ISVD), the incredible higher-order polar decomposition (IHOP), the higher-order singular value decomposition (HOSVD), and the low multilinear rank approximation using the higher-order orthogonal iteration (HOOI).
-   Perform likelihood inference in mean-zero Kronecker structured covariance models, such as
    -   Derive the maximum likelihood estimates of the covariance matrices under the array normal model,
    -   Run a likelihood ratio test in separable covariance models, and
    -   Calculate AIC's and BIC's for separable covariance models.
-   Run a Gibbs sampler to draw from the posterior distribution of the Kronecker structured covariance matrix in the array normal model. This posterior is with respect to a (non-informative) prior induced by the right Haar measure over a product group of lower triangular matrices acting on the space of Kronecker structured covariance matrices. For any invariant loss function, any Bayes rule with respect to this prior will be the uniformly minimum risk equivariant estimator (UMREE) with respect to that loss.
-   Calculate the UMREE under a multiway generalization of Stein's loss. This estimator dominates the maximum likelihood estimator uniformly over the entire parameter space of Kronecker structured covariance matrices.
-   Calculate a (randomized) orthogonally invariant estimator of the Kronecker structured covariance matrix. This estimator dominates the UMREE under the product group of lower triangular matrices.

This package is also published on [CRAN](https://cran.r-project.org/web/packages/tensr/index.html).

Vignettes are available on [Equivariant Inference](https://cran.r-project.org/web/packages/tensr/vignettes/equivariant_estimation.html) and [Likelihood Inference](https://cran.r-project.org/web/packages/tensr/vignettes/maximum_likelihood.html).

Installation
============

To install from CRAN, run in `R`:

``` r
install.packages("tensr")
```

To install the latest version from Github, run in `R`:

``` r
install.packages("devtools")
devtools::install_github("dcgerard/tensr")
```

References
==========

**Gerard, D.**, & Hoff, P. (2016). A higher-order LQ decomposition for separable covariance models. *Linear Algebra and its Applications*, 505, 57-84. [\[Link to LAA\]](http://www.sciencedirect.com/science/article/pii/S002437951630132X?np=y) [\[Link to arXiv\]](http://arxiv.org/pdf/1410.1094v1.pdf)

**Gerard, D.**, & Hoff, P. (2015). Equivariant minimax dominators of the MLE in the array normal model. *Journal of Multivariate Analysis*, 137, 32-49. [\[Link to JMVA\]](http://www.sciencedirect.com/science/article/pii/S0047259X15000330) [\[Link to arXiv\]](http://arxiv.org/pdf/1408.0424.pdf)

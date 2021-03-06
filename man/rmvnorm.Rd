% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hoff_functions.R
\name{rmvnorm}
\alias{rmvnorm}
\title{Multivariate normal simulation.}
\usage{
rmvnorm(n, mu, Sigma, Sigma.chol = chol(Sigma))
}
\arguments{
\item{n}{number of mvnormal vectors to simulate.}

\item{mu}{mean vector.}

\item{Sigma}{covariance matrix.}

\item{Sigma.chol}{Cholesky decomposition of \code{Sigma}.}
}
\description{
Simulate a multivariate normal random matrix.
}
\details{
This function simulates multivariate normal random vectors.
}
\examples{
# Simulate several matrices and compute the mean.
Y <- tensr:::rmvnorm(100, c(1, 2, 3), matrix(c(3, 0, 1, 0, 1, -1, 1, -1, 2), 3, 3))
colMeans(Y)
cov(Y)
}
\author{
Peter Hoff.
}
\keyword{multivariate}
\keyword{simulation}

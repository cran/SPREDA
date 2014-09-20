\name{plev}
\alias{plev}
\alias{dlev}
\alias{qlev}
\alias{rlev}
\title{
The Standard Largest Extreme Value Distribution
}
\description{
The cdf, pdf, quantile function, and random number generation for the standard largest extreme value distribution.
}
\usage{
plev(z)
dlev(z)
qlev(p)
rlev(n)
}

\arguments{
  \item{z}{
   Vector of values where the cdf or pdf to be evaluated. }  
  \item{p}{
   Vector of probabilities where the quantile function to be evaluated.}
  \item{n}{
   Number of random samples. If input is a vector, then the number generated is the length of it. }
}
\value{
\code{plev} returns cdf, \code{dlev} returns pdf, \code{qlev} returns quantiles, and \code{rlev} returns random samples.}
\author{
Yili Hong
}
\seealso{
  \link{psev}, \link{dsev}, \link{qsev}, \link{rsev}. 
}
\examples{
plev(c(2,3))
dlev(c(2,3))
qlev(0.1)
rlev(10)
}


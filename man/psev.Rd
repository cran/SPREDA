\name{psev}
\alias{psev}
\alias{dsev}
\alias{qsev}
\alias{rsev}
\title{
The Standard Smallest Extreme Value Distribution
}
\description{
The cdf, pdf, quantile function, and random number generation for the standard smallest extreme value distribution.
}
\usage{
psev(z)
dsev(z)
qsev(p)
rsev(n)
}
\arguments{
  \item{z}{
   Vector of values where the cdf or pdf to be evaluated.} 
  \item{p}{
   Vector of probabilities where the quantile function to be evaluated.}
  \item{n}{
   Number of random samples. If input is a vector, then the number generated is the length of it. }
}
\value{
\code{psev} returns cdf, \code{dsev} returns pdf, \code{qsev} returns quantiles, and \code{rsev} returns random samples.}
\author{
Yili Hong
}
\seealso{
  \link[SPREDA]{plev}, \link[SPREDA]{dlev}, \link[SPREDA]{qlev}, \link[SPREDA]{rlev}. 
}
\examples{
psev(c(2,3))
dsev(c(2,3))
qsev(0.1)
rsev(10)
}

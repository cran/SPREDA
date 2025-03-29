\name{lifetime.mle}
\alias{lifetime.mle}
\alias{miniusloglik.sev}
\title{
Calculate MLE for Lifetime Distribution
}
\description{
Calculate MLE for samples from lifetime distribution, e.g., Weibull distribution. The observations can be complete or censored.
}
\usage{
lifetime.mle(dat, minusloglik, starts, method = "BFGS", hessian = TRUE,...)
}
\arguments{
  \item{dat}{
First column contains event times, second column contains event indicators.}
  \item{minusloglik}{
\code{-loglikelihood}.}
  \item{starts}{
Initial values for parameters.
}
  \item{method}{
Default is "BFGS". This function call \link[stats]{optim} to do optimation. Other options can be found in \link[stats]{optim}.
}
  \item{hessian}{
A logical value. If TRUE, hessian matrix will be returned. Default is TRUE.
}
  \item{\dots}{
Further arguments can be passed to \link[stats]{optim}. }
}
\value{
A list of 
 \item{call}{Called function.}
 \item{coef}{The best minimizer found.}
 \item{vov}{Variance-covariance matrix of \code{coef}.}
 \item{min}{\code{-loglikelihood} evaluated at \code{coef}.}
 \item{dat}{Dataset used.}
 \item{minusloglik}{\code{-loglikelihood} function.}
}
\author{
Yili Hong
}
\seealso{
\code{\link[stats]{optim}}
}
\examples{
#censored samples from Weibull distribution
dat=cbind(c(1.1,2,3.6,4,5.3,7,7,7), c(1,1,1,1,1,0,0,0))
res=lifetime.mle(dat, minusloglik=miniusloglik.sev, starts=c(0,1))
res$coef  #return \eqn{u, log(\sigma)}
}

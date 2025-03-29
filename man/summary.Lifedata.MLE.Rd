\name{summary.Lifedata.MLE}
\alias{summary.Lifedata.MLE}
\alias{print.summary.Lifedata.MLE}
\title{
Summaries of "Lifedata.MLE" Object
}
\description{
These functions summaries a "Lifedata.MLE" object.
}
\usage{
\method{summary}{Lifedata.MLE}(object, ...)
}
\arguments{
  \item{object}{A "Lifedata.MLE" object.}

  \item{\dots}{Additional arguments.}
}
\value{
\code{summary.Lifedata.MLE} returns an object of class "summary.Lifedata.MLE", which is a list of 
 \item{call}{Component from \code{obj}.}
 \item{coef}{Vector of coefficients.}
 \item{vcov}{Variance-covariance matrix of \code{coef}}
 \item{coefmat}{Matrix contains mean, sd, \eqn{95\%} lower CI and \eqn{95\%} upper CI of coefficients.}
 \item{min}{Component from \code{obj}.}
 \item{surv}{Component from \code{obj}.}
 \item{dat}{Component from \code{obj}.}
 \item{ori.coef}{\code{coef} component in \code{obj}.}
 \item{ori.vcov}{\code{vcov} component in \code{obj}.}
}
\seealso{
\link[SPREDA]{Lifedata.MLE}
}

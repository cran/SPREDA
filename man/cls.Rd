\name{cls}
\alias{cls}

\title{
  Mixed primal-dual bases algorithm for estimation of parameters with restriction.
}
\description{
 It is used to estimate the parameters which have restrictions on the domain based on mixed primal-dual bases algorithm.
}
\usage{
cls(y, X)
}

\arguments{
  \item{y}{
   A vector for responses.
}
  \item{X}{
   Matrix of covariates.
}
}

\value{
 \item{y}{A vector for responses;}
 \item{x}{Matrix of covariates;}
 \item{betahat}{Estimates of parameters;}
 \item{yhat}{Estimates of responses.}
}
\references{
Fraser, D. A. S. and H. Massam (1989), A mixed primal-dual bases algorithm for regression under inequality constraints. Application to concave regression. \emph{Scandinavian Journal of Statistics}, Vol. 16, pp. 65-74.
}
\author{
 Yili Hong
}
\seealso{
\link[SPREDA]{clme} and \link[SPREDA]{deglmx}
}

\examples{
y<-sort(rnorm(100, 10, 2))
x<-cbind(runif(100, 1, 3), sort(rnorm(100, 3, 1)))
res<-cls(y, x)
}


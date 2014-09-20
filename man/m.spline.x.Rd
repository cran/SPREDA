\name{m.spline.x}
\alias{m.spline.x}
 
\title{
 M_splines basis
}
\description{
 Creation of M_splines basis
}
\usage{
 m.spline.x(x, tt, i, k)
}
\arguments{
  \item{x}{
 a value of the covariate
}
  \item{tt}{
 values of knot sequence of the covariate
}
  \item{i}{
 the i_th M_spline function
}
  \item{k}{
 degree of the spline
}
}

\value{
\code{m.spline.x} returns a value of M_spline basis value for x in i_th spline degree of k
}
\references{
Hong. Y., Y. Duan, W. Q. Meeker, D. L. Stanley, and X. Gu (2014), Statistical Methods for Degradation Data with Dynamic Covariates Information and an Application to Outdoor Weathering Data, \emph{Technometrics}, DOI: 10.1080/00401706.2014.915891.
}
\author{
Yili Hong
}


\seealso{
\code{\link{i.spline.x}}
}
\examples{
m.spline.x(x=0.3, tt=c(0, 0, 0, 0.3, 0.6, 0.8, 1, 1, 1 ), i=2, k=3)
}


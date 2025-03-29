\name{i.spline.x}
\alias{i.spline.x}
\title{ i_spline basis
}
\description{
 Create the i_th splines basis for I_splines basis or C_splines basis
}
\usage{
i.spline.x(xx, tt, i, k, delta = 1e-04, Cs = F)
}
\arguments{
  \item{xx}{
   values of of covariate
}
  \item{tt}{
  values of knot sequence of the covariate
}
  \item{i}{
   I_th splines basis
}
  \item{k}{
   degree of the spline
}
  \item{delta}{
   the length of the spans to split the range of covariate
}
  \item{Cs}{
  indicator of whether the creation of C_splines basis is needed
}
}
\details{
 Creation of the i_th splines basis for I_splines basis or C_splines basis
}
\value{
\code{i.spline.x} returns a vector of i_th splines basis for covariate values xx in knots i and degree k
}
\references{
Hong. Y., Y. Duan, W. Q. Meeker, D. L. Stanley, and X. Gu (2014), Statistical Methods for Degradation Data with Dynamic Covariates Information and an Application to Outdoor Weathering Data, \emph{Technometrics}, DOI: 10.1080/00401706.2014.915891.
}
\author{
Yili Hong
}

\seealso{
\code{\link[SPREDA]{m.spline.x}}
}
\examples{
i.spline.x(xx=runif(20), tt=c(0, 0, 0, 0.3, 0.6, 0.8, 1, 1, 1 ), i=3, k=3, 
delta = 1e-04, Cs = FALSE)
i.spline.x(xx=runif(20), tt=c(0, 0, 0, 0.3, 0.6, 0.8, 1, 1, 1 ), i=3, k=3, 
delta = 1e-04, Cs = TRUE)

}

\keyword{ I_splines basis }
\keyword{ C_splines basis }

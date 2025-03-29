\name{MIC.splines.basis}
\alias{MIC.splines.basis}

\title{
 Splines basis functions
}
\description{
 Creation splines basis for M_splines, I_splines and C_splines
}
\usage{
MIC.splines.basis(x, df = NULL, knots = NULL, boundary.knots = NULL, 
type = "Ms", degree = 3, delta = 0.01, eq.alloc = F)
}

\arguments{
  \item{x}{
values of covariate
}
  \item{df}{
 number of splines needed which is equal to knots+degree
}
  \item{knots}{
 number of knots needed which does not include the number of knots at the beginning 
}
  \item{boundary.knots}{
 the values of boundary knots, which are usually the minimum and maximum of covariate
}
  \item{type}{
 types of splines basis needed, which can be Ms Is or Cs
}
  \item{degree}{
 degree of the splines function
}
  \item{delta}{
 the length of the spans to split the range of covariate
}
  \item{eq.alloc}{
 indicators of whether the knots are equally allocated
}
}

\value{
list(mat=mat,x=x, df=df, knots=knots,boundary.knots=boundary.knots,
  type=type,degree=degree,delta=delta)
 \item{mat}{it is a matrix of splines basis}
 \item{x}{the input of covariate}
 \item{df}{the input of number of splines needed}
 \item{knots}{the input of number of knots needed not including the boundary}
 \item{boundary.knots}{the values of boundary knots}
 \item{type}{type of splines function which can be MS IS or Cs}
 \item{degree}{degree of the splines functions}
 \item{delta}{the length of the spans to split the range of covariate}
}
\references{
Hong. Y., Y. Duan, W. Q. Meeker, D. L. Stanley, and X. Gu (2014), Statistical Methods for Degradation Data with Dynamic Covariates Information and an Application to Outdoor Weathering Data, \emph{Technometrics}, DOI: 10.1080/00401706.2014.915891.
}
\author{
Yili Hong
}
\seealso{
\link[SPREDA]{i.spline.x}, \link[SPREDA]{m.spline.x}
}
\examples{
MIC.splines.basis(x=runif(20), df = NULL, knots = 3, boundary.knots = NULL, 
    type = "Ms", degree = 4, delta = 0.01, eq.alloc = FALSE) 
}

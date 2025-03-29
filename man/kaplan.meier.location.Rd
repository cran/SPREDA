\name{kaplan.meier.location}
\alias{kaplan.meier.location}
\title{
Kaplan-Meier Location}
\description{
Calculate the location of Kaplan-Meier estimator.
}
\usage{
kaplan.meier.location(fit)
}
\arguments{
  \item{fit}{
\link[survival]{survfit} object.
}
}
\value{
 \item{xloc, yloc}{x, y locations.}
}

\author{
Yili Hong
}
\examples{
require(survival)
fit <- survfit(Surv(time, status) ~ x, data = aml)
kaplan.meier.location(fit)
}


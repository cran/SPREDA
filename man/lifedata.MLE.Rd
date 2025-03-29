\name{Lifedata.MLE}
\alias{Lifedata.MLE}
\alias{miniusloglik.ce.xt.lev}
\alias{miniusloglik.ce.xt.logis}
\alias{miniusloglik.ce.xt.norm}
\alias{miniusloglik.ce.xt.sev}
\alias{miniusloglik.lev.wts}
\alias{miniusloglik.sev.wts}
\alias{miniusloglik.normal.wts}
\alias{miniusloglik.logis.wts}
\alias{print.Lifedata.MLE}
\alias{coef.Lifedata.MLE}
\alias{logLik.Lifedata.MLE}
\title{
Parametric Fitting for Lifetime Data
}
\description{
Fit parametric models (based on log-location-scale family of distributions) to right censored and/or left truncated data, with (dynamic) covariates. 
}
\usage{
Lifedata.MLE(formula, data, xt.dat = NULL, dist, method = "BFGS", 
subset, truncation, na.action, weights, ref_time = NULL, starts = NULL, ...)
}
\arguments{
  \item{formula}{
A formula object, which has a \code{Surv} object on the left of \code{~} and covariates on the right. 
}
  \item{data}{
A data frame used to evaluate variables in the \code{formula}, \code{subset} and \code{weights} arguments.
}
  \item{xt.dat}{
A data frame contains dynamic covariates. The first and second columns must be sample id and time. If specified, cumulative exposure model will be used to fit the data.
}
  \item{dist}{
Distribution used in the model. Can be "weibull", "lognormal", "loglogistic", "frechet". 
}
  \item{method}{
Default is "BFGS". This function calls \link[stats]{optim} to do optimization. Other options can be found in \link[stats]{optim}.
}
  \item{subset}{
This is an optional argument that specifies the subset of observations to be used in the fitting procedure.
}
  \item{truncation}{
An optional data frame contains truncation time and indicators.
}
  \item{na.action}{
Indicates what to be done when data contain missing values.
}
  \item{weights}{
An optional vector of weights for each observation. 
}
  \item{ref_time}{
An optional vector of reference time (start time) of dynamic covariates. If it is \code{NULL}, \code{ref_time} is a vector of 0's.
}
  \item{starts}{
Initial values for parameters.
}
  \item{\dots}{
Further arguments can be passed to \link[stats]{optim}. 
}
}
\details{
The default method for choosing start values can sometimes failed, the user may need to try several start values to make the function work.
}
\value{
This function returns an object of class "Lifedata.MLE". An "Lifedata.MLE" object is a list of 
 \item{call}{Called function.}
 \item{formula}{Formula argument in the input.}
 \item{coef}{Vector of coefficients.}
 \item{vov}{Variance-covariance matrix of \code{coef}.}
 \item{min}{\code{-loglikelihood} evaluated at \code{coef}.}
 \item{surv}{Survival probabilities.}
 \item{dat}{Dataset used to fit the model.}
 }
\references{
Yili Hong and William Q. Meeker. Field-Failure Predictions Based on Failure-Time Data With Dynamic Covariate Information. \emph{Technometrics}, \bold{55}(2), 135--149, 2013.
}
\author{
Yili Hong
}
\seealso{
\link[survival]{Surv}, \link[stats]{optim}, \link[SPREDA]{summary.Lifedata.MLE}. See methods(class="Lifedata.MLE") for all the functions related to "Lifedata.MLE" object.
}
\examples{
#################################################################
### right censored data
data(shock)
res1=Lifedata.MLE(Surv(Distance, Censor)~1, data=shock, dist="weibull")
res1
summary(res1)

res2=Lifedata.MLE(Surv(Distance, Censor)~1, data=shock, dist="lognormal")
res2
summary(res2)

#################################################################
### left truncated right censoring data
data(testdata)
test=Lifedata.MLE(Surv(truncation.age, age, failure)~1, data=testdata,dist="weibull", 
method="Nelder-Mead", subset=(group=="MC_Old"))
summary(test)  


#################################################################
### dynamix covariates
data(Prod2.xt.dat)
data(Prod2.fai.dat)

\donttest{
test=Lifedata.MLE(Surv(failure.time, delta)~1, data=Prod2.fai.dat,xt.dat=Prod2.xt.dat,
starts=c(12, 3.5, log(2)), dist="weibull")
summary(test)
}
}



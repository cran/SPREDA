\name{deglmx}
\alias{deglmx}
\alias{clme}
\alias{data.pre.fun}
\alias{getCov}
\alias{getnames}
\alias{getRanName}
\alias{match.dat.fun}
\alias{minus.log.lik.nlme}
\alias{minus.loglik.lme}
\alias{mle.obj.to.fit.obj}
\alias{optim.ftn.2}
\alias{optim.step1.2}
\alias{optim.step2.2}
\alias{plot.MICsplines}
\alias{print.deglmx}
\alias{sqrt_mat}
\alias{Px}
\alias{xmat.obj.to.xmat}
\alias{xmat.to.cumsum}
\alias{coefinitial.ftn}
\alias{coef.deglmx.MLE}
\title{
  Functions for estimating parameters in the linear/nonlinear mixed models with dynamic covariates.
}
\description{
  Functions for estimating parameters in the linear/nonlinear mixed models with dynamic covariates. Those dynamic covariates will have restricted-shape effects such as monotonic increasing, decreasing or quadratic shape. 
}
\usage{
deglmx(fixed, data, dyn.data, id, time, random = NULL, linear = TRUE, ytrend, 
splinetrend = NULL, splinetype = NULL, degree = NULL, knots = NULL, 
weights = NULL, subset = NULL, start, maxiter = 10, method = "BFGS", ...)
}

\arguments{
  \item{fixed}{
  Formula with fixed effect.
}
  \item{data}{
  Data with id, time, response, and fixed covariates.
}
  \item{dyn.data}{
  Dynamic data with id, time, dynamic covariates.
}
  \item{id}{
  The name of the id which is characters or string.
}
  \item{time}{
  The name of time in the data or dyn.data which is characters or string.
}
  \item{random}{
  The formula for random parts which should condition on the id.
}
  \item{linear}{
  The index of linear or nonlinear. 
}
  \item{ytrend}{
  If ytrend=1 indicates the increasing trend of the response, if ytrend=-1 indicates the decreasing trend of the response.
}
  \item{splinetrend}{
 They are a vector of trends of dynamic covariate effects. Define 1 as increasing trend and -1 as decreasing trend.
}
  \item{splinetype}{
 They are a vector of the spline basis type which can be chosen among "Ms", "Is", and "Cs".
}
  \item{degree}{
 The degree of the spline functions.
}
  \item{knots}{
 The number of knots in the spline functions.
}
  \item{weights}{
 Weights of the observation. 
}
  \item{subset}{
 Subset of the data.
}
  \item{start}{
 The initial values for covariance and variance matrix.
}
  \item{maxiter}{
 The maximum number of iteration in the optimization. 
}
  \item{method}{
 The method of \link[stats]{optim} function with "BFGS" as default. More details in \link[stats]{optim}.
}
  \item{\dots}{
 Other items. 
}
}

\value{
 The returned outputs belong to class of "deglmx".
 list(type = type, fit = fit, dat = dat.obj, dyn.mat = cov.mat.tmp, 
            ytrend = ytrend, dyncovnames = dyncovnames, dyn.data = dyn.data, 
            beta.index = beta.index, call = mfun)
 \item{type}{Type of the model either linear mixed or nonlinear mixed models.}
 \item{fit}{The fitting results in the model including estimates, residuals, loglikelihood, and so on.}
 \item{dat}{The modified data.}
 \item{dyn.mat}{The spline basis functions.}
 \item{ytrend}{The indication of response trend either increasing (1) or decreasing (-1).}
 \item{dyncovnames}{Names of dynamic covariates in the model.}
 \item{dyn.data}{The modified dynamic data.}
 \item{beta.index}{Indications of parameters in the dyanmic covariates.}
 \item{call}{The call function in the model.}
}
\references{
Hong. Y., Y. Duan, W. Q. Meeker, D. L. Stanley, and X. Gu (2014), Statistical Methods for Degradation Data with Dynamic Covariates Information and an Application to Outdoor Weathering Data, \emph{Technometrics}, DOI: 10.1080/00401706.2014.915891. 
}
\author{
  Yili Hong
}
\note{
  For the nonlinear model, we currently only implement one specific nonlinear relationship.
}


\examples{
 data(Coatingenv)
 data(Coatingout)
 
 \donttest{
 fit=deglmx(DAMAGE_Y~UV+RH+TEMP, data=Coatingout, dyn.data=Coatingenv, 
           id="SPEC_NUM", time="TIME", random=~TIME|SPEC_NUM, linear=TRUE, ytrend=-1,  
           splinetrend=c(-1, -1, -1), splinetype=c("Is", "Cs", "Is"), degree=c( 3, 3, 3), 
           knots=c(4, 4, 4), weights=NULL, subset=NULL,start=c(0.017,0.0013,-0.404,0.0176), 
           maxiter=10, method='BFGS')
           
 fit=deglmx(DAMAGE_Y~G/(1+exp(-log(UV+RH+TEMP)/H)), data=Coatingout, dyn.data=Coatingenv, 
           id="SPEC_NUM", time="TIME", random=~G+H|SPEC_NUM, linear=FALSE, ytrend=-1,  
           splinetrend=c(1, 1, 1), splinetype=c("Is", "Cs", "Is"), degree=c( 3, 3, 3), 
           knots=c(4, 4, 4), weights=NULL, subset=NULL, start=c(0.1, 0.1, -0.5, 0.01), 
           maxiter=4)
         }
}


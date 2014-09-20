\name{plotdeglmx}
\alias{plotdeglmx}

\title{
  Plot function for the class of "deglmx".
}
\description{
  Plots of dynamic covariates and fitting of the model in the class of "deglmx".
}
\usage{
plotdeglmx(x, type)
}

\arguments{
  \item{x}{
   The fitting results of class "deglmx".
   }
  \item{type}{
   If type=1, plot the spline effect plot. If type=2, plot the fitting plots. If type is missing, plot all of them.
   }
}

\author{
  Yili Hong
}


\seealso{
  \link{deglmx}
}
\examples{
 data(Coatingenv)
 data(Coatingout)
 
 \donttest{
 fit=deglmx(DAMAGE_Y~UV+RH+TEMP, data=Coatingout, dyn.data=Coatingenv, 
           id="SPEC_NUM", time="TIME", random=~TIME|SPEC_NUM, linear=TRUE, ytrend=-1,  
           splinetrend=c(-1, -1, -1), splinetype=c("Is", "Cs", "Is"), degree=c( 3, 3, 3), 
           knots=c(4, 4, 4),weights=NULL, subset=NULL,start=c(0.017,0.0013,-0.404,0.0176), 
           maxiter=10, method='BFGS')
 plotdeglmx(x=fit)
 plotdeglmx(x=fit, type=1)
 plotdeglmx(x=fit, type=1)
     }
}


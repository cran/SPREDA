\name{ce.dat.prep}
\alias{ce.dat.prep}
\title{
Create an object for cumulative exposure
}
\description{
Create a dataset with format that is suitable for analysis in the cumulative exposure model.
}
\usage{
ce.dat.prep(xt.dat, failure.dat, ref_time = NULL)
}
\arguments{
  \item{xt.dat}{
"data.frame" format object. The first and second columns are sample id and time, respectively. Other columns are dynamic covariates.
}
  \item{failure.dat}{
A "Surv" object. See \link{Surv}.
}
  \item{ref_time}{
Reference time for each sample. If not specified, ref_time is a vector of 0's.
}
}
\value{
A list of failure.dat, xt.obj and aux.inf.
}



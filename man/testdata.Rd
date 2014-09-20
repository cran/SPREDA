\name{testdata}
\alias{testdata}
\docType{data}
\title{
Testdata
}
\description{
This dataset involves left truncation and right censoring.
}
\usage{data(testdata)}
\format{
  A data frame with 710 observations on the following 9 variables.
  \describe{
    \item{\code{age}}{a numeric vector}
    \item{\code{failure}}{a numeric vector}
    \item{\code{manufacture.year}}{a numeric vector}
    \item{\code{manufacturer}}{a factor with levels \code{MA} \code{MB} \code{MC} \code{MD} \code{ME} \code{Other}}
    \item{\code{cooling}}{a factor with levels \code{FIFE} \code{NIFE} \code{NINE} \code{Unknown}}
    \item{\code{insulation}}{a factor with levels \code{d55} \code{d65}}
    \item{\code{truncation}}{a numeric vector}
    \item{\code{truncation.age}}{a numeric vector}
    \item{\code{group}}{a factor with levels \code{MA_New} \code{MB_Old} \code{MC.ME.Other_New} \code{MC_Old} \code{MD_Old} \code{ME_Old} \code{Other_Old}}
  }
}
\source{
Hong, Y., W. Q. Meeker, and J. D. McCalley. Prediction of Remaining Life of Power Transformers Based on Left Truncated and Right Censored Lifetime Data . \emph{The Annals of Applied Statistics}, \bold{3}(2), 857--879, 2009.
}

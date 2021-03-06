\name{hawkins}
\alias{hawkins}
\docType{data}
\title{The Hawkins-Bradu-Kass dataset}
\description{
  An artificial dataset generated by Hawkins, Bradu, and Kass used for illustrating 
some of the merits of robust techniques.
}
\usage{data(hawkins)}
\format{
  A data frame consisting of 75 observations on the following 4 variables.
  \describe{
    \item{V1}{First predictor variable}
    \item{V2}{Second predictor variable}
    \item{V3}{Third predictor variable}
    \item{V4}{The response variable}
  }
}
\source{ The data appears on p. 94 of Rousseeuw, P, and Leroy, A. (1987). 
Robust Regression and outlier detection. John Wiley & Sons. New York.
}
\references{
Hawkins, D.M, Bradu, D., Kass, G.V.(1984). Location of several outliers in multiple regression data 
using elemental sets. Technometrics, 26. 197-208. 
}
\examples{
#---- Finding outliers using the LOF algorithm----
data(hawkins)
haw.lof=maxlof(hawkins[,1:3],"Hawkins")
haw.lof[order(haw.lof,decreasing=TRUE)]
}
\keyword{datasets}

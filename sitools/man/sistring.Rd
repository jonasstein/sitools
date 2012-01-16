\name{sistring}
\alias{sistring}
\title{Function to convert number to string with SI prefixes}
\description{convert a number to a string using SI prefixes}
\usage{sistring(number)}
\arguments{\item{number}{number to convert}}
\details{Main application of this function is to get nice strings to
  place at axis ticks. In this case some prefixes like deka are not
  used. This function will only generate 10^(3*n) prefixes at the
  moment. This may change soon.}
\value{  \item{comp1}{string using SI prefixes}}
\references{http://www.bipm.org/en/si/si_brochure/chapter3/prefixes.html}
\author{Jonas Stein \email{news@jonasstein.de} \url{https://github.com/jonasstein/sitools}}

\section{Warning}{package is still pre alpha}
\examples{
numbers <- c(1e5, 3.5e19, 0.004)
sistring(numbers)

sistring(10000)
}

\keyword{utilities}
\keyword{misc}
\keyword{aplot}
\keyword{methods}

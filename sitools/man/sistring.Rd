\name{f2si}
\alias{f2si}
\title{Function to convert number to string with SI prefixes}
\description{Convert a single or a list of float or integer
  to a string using SI prefixes.}
\usage{f2si(number)}
\arguments{\item{number}{number to convert}}
\details{Main application of this function is to get nice strings to
  place at axis ticks. In this case some prefixes like deka are not
  used. This function will only generate 10^(3*n) prefixes at the
  moment. This may change soon.}
\value{  \item{comp1}{string using SI prefixes}}
\references{http://www.bipm.org/en/si/si_brochure/chapter3/prefixes.html}
\author{Jonas Stein \email{news@jonasstein.de} \url{https://github.com/jonasstein/sitools}}

\section{Warning}{package is still in alpha stage}
\examples{
numbers <- c(1e5, 3.5e19, 0.004)
f2si(numbers)

f2si(10000)
}

\keyword{utilities}
\keyword{misc}
\keyword{engeneering}
\keyword{physics}
\keyword{chemistry}
\keyword{conversion}
\keyword{aplot}
\keyword{units}

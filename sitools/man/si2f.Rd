\name{si2f}
\alias{si2f}
\title{si2f converts a string with SI prefixes to a floating-point number}
\description{Convert a character vector containing numbers and units
  with SI prefixes to a numeric vector. (Inverse of \code{\link{f2si}})}
\usage{si2f(string, unit="")}
\arguments{\item{string}{character vector to convert}
  \item{unit}{unit string to parse behind the SI prefix (e.g. "g" for grams)}}
\details{Given a character vector containing strings such as "5k", this
  function parses out the number (5) and the SI prefix (k), converts the
SI prefix to a power of ten (\eqn{10^3}), multiplies them together, and
returns the result (5000). If the strings also have a suffix indicating
a unit, e.g. "5 kg" for 5 kilograms, then \code{unit} must be set to the
unit suffix ("g"). The unit is not used in the output; it is only used
during parsing to make sure that the input uses the expected units.}
\value{numeric vector corresponding to the quantities represented in
  \code{string}. If any element of \code{string} is not recognized as a
  number followed by an SI prefix and the specified unit, \code{NA} is
  returned for that element, indicating failure to parse.}
\references{https://www.bipm.org/en/measurement-units/si-prefixes}
\author{Ryan C. Thompson \email{rct@thompsonclan.org}}

\seealso{
  \code{\link{f2si}}.
}
\section{Warning}{package is still in alpha stage}
\examples{
library(sitools)

# convert a single number
si2f("10k")

# convert a single number with unit
si2f("23 mV", unit = "V")

# convert vector of multiple numbers
si_strings <- c("100 k", "35 E", "4 m")
si2f(si_strings)
}

\keyword{utilities}
\keyword{misc}
\keyword{engeneering}
\keyword{physics}
\keyword{chemistry}
\keyword{conversion}
\keyword{aplot}
\keyword{units}

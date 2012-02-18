\name{kilo}
\alias{yotta}
\alias{zetta}
\alias{exa}
\alias{peta}
\alias{tera}
\alias{giga}
\alias{mega}
\alias{kilo}
\alias{hecto}
\alias{deca}
\alias{deci}
\alias{centi}
\alias{milli}
\alias{micro}
\alias{nano}
\alias{pico}
\alias{femto}
\alias{atto}
\alias{zepto}
\alias{yocto}
\title{SI prefixes}
\description{SI prefixes are defined as constant factors like kilo <- 1000}
\details{SI prefixes are defined as constant factors like kilo <- 1000
  The use of constants for SI prefixes will make your code readable.
  It reduces the risk of mistakes and supports the usage of SI
  units. The BIPM provides a list of prefixes. All of them are available
  as constants in sitools.}
\references{http://www.bipm.org/en/si/si_brochure/chapter3/prefixes.html}
\author{Jonas Stein \email{news@jonasstein.de} \url{https://github.com/jonasstein/sitools}}
\examples{
library(sitools)

# dice have a volume of (in metres)
a <- 1 * centi
volumedice <- a^3
volumedice

# how many dice fit in a box with
# 10 cm height
# 20 cm length 
# 30 cm width

volumebox <- 10*centi * 20*centi * 30*centi

volumebox / volumedice
}

\keyword{utilities}
\keyword{misc}
\keyword{aplot}
\keyword{methods}

\name{f2si}
\alias{f2si}
\title{f2si converts floating-point number to a string with SI prefixes}
\description{Convert a single or a list of float or integer
  to a string using SI prefixes.}
\usage{f2si(number, unit="")}
\arguments{\item{number}{number to convert}
  \item{unit}{string to attach behind the SI prefix}}
\details{Main application of this function is to get nice strings to
  place at axis ticks. In this case some prefixes like deka are not
  used. This function will only generate 10^(3*n) prefixes for
  positive numbers at the moment. This may change soon.}
\value{  \item{comp1}{string using SI prefixes}}
\references{http://www.bipm.org/en/si/si_brochure/chapter3/prefixes.html}
\author{Jonas Stein \email{news@jonasstein.de} \url{https://github.com/jonasstein/sitools}}

\section{Warning}{package is still in alpha stage}
\examples{
library(sitools)

# convert single number
f2si(10000)

# convert single number with unit
f2si(0.023, unit="V")

# convert list of numbers
numbers <- c(1e5, 3.5e19, 0.004)
f2si(numbers)


# how to create fancy axis labels
# generate some data
xdata <- 10^(0:10)
ydata <- sin(xdata)^2

# lets assume the ticks should be at 1,2,4 ..10,20,40...
tickvalues <- 10^(0:10) %x% 2^(0:2)

# plot the data and generate axis
plot(x=xdata, y=ydata, log="x", xlim=c(1,1e10),  xaxt="n",xlab="Frequency (Hz)")
axis(1, at=tickvalues, labels=f2si(tickvalues))
}

\keyword{utilities}
\keyword{misc}
\keyword{engeneering}
\keyword{physics}
\keyword{chemistry}
\keyword{conversion}
\keyword{aplot}
\keyword{units}

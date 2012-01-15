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
\value{
  \item{comp1}{string using SI prefixes}
}
\references{
http://www.bipm.org/en/si/si_brochure/chapter3/prefixes.html
}
\author{
Jonas Stein \email{news@jonasstein.de} \url{https://github.com/jonasstein/sitools}
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
> sistring(c(1e5, 3.5e19, 0.004))
[1] "100 k" "35 E"  "4 m"



## The function is currently defined as
function(number){

  lut <-  c(1e-24, 1e-21, 1e-18, 1e-15,
            1e-12, 1e-09, 1e-06, 1e-03,
            1e+00,
            1e+03, 1e+06, 1e+09, 1e+12,
            1e+15, 1e+18, 1e+21, 1e+24)

  pre <- c("y", "z", "a", "f",
           "p", "n", "u", "m",
           " ",
           "k", "M", "G", "T",
           "P", "E", "Z", "Y")

  ix <- findInterval(number, lut)
 
  if (length(ix) > 0 ) {
    sistring <- paste(number/lut[ix], pre[ix])
  } else {
    sistring <- as.character(x)
  }

  return(sistring)
  }
}

\keyword{ ~kwd1 } utilities
\keyword{ ~kwd2 } misc
\keyword{ ~kwd3 } aplot
\keyword{ ~kwd4 } methods




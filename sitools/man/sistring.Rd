\name{sistring}
\alias{sistring}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sistring(number)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{number}{
%%     ~~Describe \code{number} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

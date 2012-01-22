f2si <-
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
    sistring <- as.character(number)
  }

  return(sistring)
}


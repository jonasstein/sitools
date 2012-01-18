sistring <- function(number){

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


package.skeleton(list=c("sistring"), name="sitools")

yotta <- 1e24
zetta <- 1e21
exa <- 1e18
peta <- 1e15
tera <- 1e12
giga <- 1e9
mega <- 1e6
kilo <- 1e3
hecto <- 1e2
deca <- 1e1
deci <- 1e-1
centi <- 1e-2
milli <- 1e-3
micro <- 1e-6
nano <- 1e-9
pico <- 1e-12
femto <- 1e-15
atto <- 1e-18
zepto <- 1e-21
yocto <- 1e-24


save(file="siprefixvalues.rda",
     list=c("yotta", "zetta", "exa", "peta", "tera", "giga", "mega", "kilo", "hecto", "deca",
       "deci", "centi", "milli", "micro", "nano", "pico", "femto", "atto", "zepto", "yocto"))

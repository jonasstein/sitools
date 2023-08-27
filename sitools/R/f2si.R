f2si <- function (number, unit = "")
{
    if (length(number) == 0) {
        return(character(0))
    }
    ix <- pmax(1, findInterval(abs(number), si_factors))
    ## Zero gets the empty prefix
    ix[number == 0] <- match("", names(si_factors))
    number_scaled <- ifelse(number == 0, number, number / si_factors[ix])
    return(str_trim(paste0(number_scaled, " ", names(si_factors)[ix], unit)))
}

# test vector
#a <- 2.34*10^(-22:22)
#b <-  2.34*10^((-8:8)*3)
#c <-  -2.34*10^((-8:8)*3)

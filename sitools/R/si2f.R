rex::register_shortcuts("sitools")

si2f <- function(string, unit = "") {
    if (length(string) == 0) {
        return(numeric(0))
    }

    rx <- rex::rex(
        ## Leading whitespace
        start,
        zero_or_more(space),

        ## Capture a floating point number
        capture(
            ## Sign
            maybe(one_of("+", "-")),
            ## Integer part
            zero_or_more(digit),
            ## Decimal point
            maybe("."),
            ## Fractional part (or integer part when decimal is not
            ## present)
            one_or_more(digit),
            ## Exponential notation
            maybe(
                one_of("e", "E"),
                maybe(one_of("+", "-")),
                one_or_more(digit)
            )
        ),

        ## Space between number and unit
        zero_or_more(space),

        ## Capture SI prefix
        capture(maybe(one_of(names(si_factors)))),

        unit,

        ## Trailing whitespace
        zero_or_more(space),
        end
    )

    m <- str_match(string, rx)
    base <- as.numeric(m[,2])
    p <- m[,3]
    ## We can't just subset by name here because "" is an invalid name
    ## for subsetting.
    fac <- si_factors[match(p, names(si_factors))]
    base * fac
}

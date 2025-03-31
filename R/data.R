#' National Economic Indicators, Australia
#' @format ## `audata`
#' A data frame with 262 rows and 3 columns spanning: 1959-Q3 to 2024 Q4
#' \describe{
#'   \item{date}{Observation quarter}
#'   \item{UNRATE}{Australian Unemployment Rate, all persons seasonally adjusted,
#'                  Series ID: }
#'   \item{GDPC1}{Australian Gross Domestic Product, chain volume measure
#'                  seasonally adjusted, $million, Series ID: }
#' }
#' @source <https://abs.gov.au>
"audata"

#' National Economic Indicators, United States
#' @format ## `usdata`
#' A data frame with 278 rows and 5 columns spanning: 1947 Q1 to 2016 Q4. The original
#' dataset from GMW2018.
#' \describe{
#'   \item{DATE}{Observation quarter}
#'   \item{UNRATE}
#'   \item{GDPC1}
#'   \item{cpiaucsl}
#'   \item{GDPDEF}
#'   \item{UNRATE}
#' }
#' @source <https://bnfiltering.com/>
"usdata"

#' United States Gross Domestic Product
#' @format ## `usgdp`
#' A time series object of length 305 spanning 1947 Q1 to 2023 Q4
#' @source <https://bnfiltering.com/>
"usgdp"


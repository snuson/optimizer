library(ggplot2)

#' Portfolio Optimizer
#'
#' Optimize a portfolio using various methods
#' @param input_data This represents Market data from which
#' to make the portfolio. In this case it only takes a list of names.
#' This data should contain everything necessary to perform the calculations.
#' @param mthd The method to be used in the optimization. There are 3
#' mock-up methods to choose from at the moment: mean-variance, risk-parity,
#' and heuristic
#' @param target The wanted return in percentages. This is an example param
#' that is to be passed to the optimizer for customization.
#' @return The results are produced randomly from a uniform distribution.
#' Returns a pie chart that visualizes the weights.
#' Also prints a report on the results.
#' @examples
#' optimize_portfolio(c("AAPL", "TSLA", "GOOGL"))
#' @export
optimize_portfolio <- function(
    input_data,
    mthd = "mean-variance",
    target = 5) {

  # Data handling
  market_data <- handle_data(input_data)

  # Optimizing
  opt_data <- opt_portfolio(market_data, mthd, target)

  # Present the results
  present(opt_data)
}

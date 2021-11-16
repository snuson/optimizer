# Choosing the method based on input
opt_portfolio <- function(market_data, mthd, target) {

  # Mean-variance approach
  if (mthd == "mean-variance") {
    return(opt_mean_var(market_data, target))
  }
  # Risk-parity approach
  if (mthd == "risk-parity")  {
    return(opt_risk_parity(market_data, target))
  }
  # Heuristic approach
  if (mthd == "heuristic")  {
    return(opt_heuristic(market_data, target))
  }
  stop(paste("Error:", mthd, "is not a valid method"))
}


# Optimize using mean-var
opt_mean_var <- function(market_data, target) {
  # Pseudo results
  market_data
}


# Optimize using risk-parity approach
opt_risk_parity <- function(market_data, target) {
  # Pseudo results
  market_data
}


# Optimize using heuristic approach
opt_heuristic <- function(market_data, target) {
  # Pseudo results
  market_data
}

# Market data handling and testing
handle_data <- function(input_data){

  data_len <- length(input_data)

  # Perform test to validate that the data is suitable
  if (data_len == 0) {
    stop("Error: The data is empty.")
  }

  # Prep the data from the optimizer
  portfolio_weights <- runif(n = data_len, min = 1, max = 20)
  portfolio_weights <- portfolio_weights / sum(portfolio_weights)

  data.frame(name=input_data,
             value=portfolio_weights)
}


# Presents the results nicely
present <- function(opt_data) {

  # Print the weights
  cat("the securities and weights:\n")
  print(opt_data)

  # A plot to visualize the weights
  ggplot(opt_data, aes(x=name, y=value)) +
    geom_bar(stat = "identity") +
    ylim(0, 1)
}

# This file contains the main functions for multilateration calculations.

# Core multilateration function
multilaterate <- function(distances, coordinates) {
  validate_inputs(distances, coordinates)
  
  # Number of reference points
  n <- length(distances)
  
  # Initial guess for the position (centroid of reference points)
  initial_guess <- colMeans(coordinates)
  
  # Optimization function to minimize the error
  objective_function <- function(position) {
    sum((distance(position, coordinates) - distances) ^ 2)
  }
  
  # Optimize to find the best position
  result <- optim(initial_guess, objective_function)
  
  return(result$par)
}

# Helper function to calculate distances from a point to all reference points
distance <- function(point, coordinates) {
  sqrt(rowSums((coordinates - point) ^ 2))
}
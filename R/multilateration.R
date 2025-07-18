# This file contains the main functions for multilateration calculations.

## Core multilateration function (refers to new distance function)
multilaterate <- function(distances, coordinates) {
  validate_inputs(distances, coordinates)
  n <- length(distances)
  initial_guess <- colMeans(coordinates)
  objective_function <- function(position) {
    sum((point_to_coords_distance(position, coordinates) - distances) ^ 2)
  }
  result <- optim(initial_guess, objective_function)
  return(result$par)
}


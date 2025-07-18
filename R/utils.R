# Utility functions for multilateration calculations

# Calculate the distance between two points
distance <- function(point1, point2) {
  sqrt(sum((point1 - point2) ^ 2))
}

# Validate input data for multilateration
validate_inputs <- function(distances, coordinates) {
  if (length(distances) != nrow(coordinates)) {
    stop("The number of distances must match the number of reference points.")
  }
  if (any(distances < 0)) {
    stop("Distances must be non-negative.")
  }
  if (!is.matrix(coordinates) || ncol(coordinates) != 2) {
    stop("Coordinates must be a matrix with two columns (x, y).")
  }
}
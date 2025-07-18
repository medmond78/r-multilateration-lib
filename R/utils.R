# Scalar distance for validation
distance <- function(point1, point2) {
  sqrt(sum((point1 - point2) ^ 2))
}

# Input validation
validate_inputs <- function(distances, coordinates) {
  if (length(distances) != nrow(coordinates)) stop("Number of distances must match points.")
  if (any(distances < 0)) stop("Distances must be non-negative.")
  if (!is.matrix(coordinates) || ncol(coordinates) != 2) stop("Coords must be matrix (x, y).")
}

# Vectorized distance helper (renamed to avoid conflict)
point_to_coords_distance <- function(point, coordinates) {
  sqrt(rowSums((coordinates - matrix(point, nrow(coordinates), length(point), byrow = TRUE)) ^ 2))
}

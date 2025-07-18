\name{multilateration}
\alias{multilateration}
\title{Multilateration Calculations}
\description{
  This function performs multilateration calculations to determine the position of a point based on distances from known reference points.
}
\usage{
  multilateration(distances, coordinates)
}
\arguments{
  \item{distances}{A numeric vector of distances from the reference points.}
  \item{coordinates}{A matrix of coordinates for the reference points, with two columns (x, y).}
}
\value{
  A numeric vector representing the estimated coordinates (x, y) of the point.
}
\examples{
  # Example usage of the multilateration function
  distances <- c(5, 7, 10)
  coordinates <- matrix(c(0, 0, 5, 0, 2, 5), ncol = 2, byrow = TRUE)
  result <- multilateration(distances, coordinates)
  print(result)
}
\seealso{
  \code{\link{distance}}, \code{\link{validate_inputs}}
}
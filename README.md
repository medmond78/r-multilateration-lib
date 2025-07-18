# r-multilateration-lib

## Overview
The `r-multilateration-lib` is a set of R scripts designed for multilateration calculations. It provides functions to determine the position of a point based on distances from known reference points.

## Usage Example

See `example.R` for a demonstration:

```r
# Source the core multilateration code
source("R/multilateration.R")
source("R/utils.R")

# Define reference points (anchors) and measured distances
anchors <- data.frame(
  x = c(0, 0, 10, 10),
  y = c(0, 10, 0, 10)
)
distances <- c(6, 6.151, 8, 8)

# Estimate the unknown location
result <- multilaterate(distances, as.matrix(anchors))
print(result)

# Visualize anchors and estimated location
plot(anchors$x, anchors$y, col="red", pch=19, xlim=c(-2, 12), ylim=c(-2, 12), xlab="X", ylab="Y", main="Multilateration Example")
points(result[1], result[2], col="blue", pch=19)
legend("topright", legend=c("Anchors", "Estimated Location"), col=c("red", "blue"), pch=19)
```

## File Structure

- `R/multilateration.R` – Main multilateration function
- `R/utils.R` – Utility functions for distance and validation
- `example.R` – Example usage and visualization

## How It Works

1. Define anchor/reference points and measured distances.
2. Call `multilaterate()` with your data.
3. Visualize results using base R plotting.

## Contributing
Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License
This project is licensed under the MIT License - see the LICENSE file for
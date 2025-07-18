# Source the core multilateration code
source("R/multilateration.R")        # Adjust if function is in a different script
source("R/utils.R")                # Source other scripts if needed

# Example input: Simulated positions of reference points and distances from target
anchors <- data.frame(
  x = c(0, 0, 10, 10),
  y = c(0, 10, 0, 10)
)

# Example data, as matrix
anchors <- data.frame(x = c(0, 0, 10, 10), y = c(0, 10, 0, 10))
distances <- c(6, 6.151, 8, 8)

# Call - convert data.frame to matrix for function
result <- multilaterate(distances, as.matrix(anchors))
print(result)


plot(anchors$x, anchors$y, col="red", pch=19, xlim=c(-2, 12), ylim=c(-2, 12), xlab="X", ylab="Y", main="Multilateration Example")
points(result[1], result[2], col="blue", pch=19)
legend("topright", legend=c("Anchors", "Estimated Location"), col=c("red", "blue"), pch=19)
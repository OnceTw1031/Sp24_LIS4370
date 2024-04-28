#' Plot histogram of electricity data
#' 
#' Generate histograms to visualize the distribution of electricity consumption or generation values.
#' 
#' @param data Preprocessed dataset.
#' @param value_column Name of the column containing electricity values.
#' @param bins Number of bins for the histogram.
#' 
#' @return Histogram plot.
#' 
#' @examples
#' # Plot histogram of electricity consumption
#' plot_histogram(clean_data, value_column = "consumption", bins = 20)
#' 
plot_histogram <- function(data, value_column, bins) {
  # Load required packages
  library(ggplot2)
  
  # Create the histogram plot
  p <- ggplot(data, aes_string(x = value_column)) +
    geom_histogram(binwidth = bins, fill = "lightpink", color = "black") +
    labs(x = value_column, y = "Frequency", title = "Histogram of Electricity Data")
  
  return(p)
}

#' Plot time series of electricity data
#' 
#' Visualize electricity consumption or generation over time, allowing users to identify
#' trends, patterns, and anomalies.
#' 
#' @param data Preprocessed dataset.
#' @param time_column Name of the column containing timestamps.
#' @param value_column Name of the column containing electricity values.
#' @param group_column (Optional) Name of the column used for grouping data (ex., different regions).
#' 
#' @return A time series plot.
#' 
#' @examples
#' # Plot electricity consumption over time
#' plot_timeseries(clean_data, time_column = "timestamp", value_column = "consumption")
#' 
plot_timeseries <- function(data, time_column, value_column, group_column = NULL) {
  # Load required packages
  library(ggplot2)
  
  # Create the time series plot
  p <- ggplot(data, aes_string(x = time_column, y = value_column, color = group_column)) +
    geom_line() +
    labs(x = "Time", y = "Electricity Value", title = "Electricity Time Series")
  
  # If group_column is provided, add a legend
  if (!is.null(group_column)) {
    p <- p + scale_color_discrete(name = group_column)
  }
  
  return(p)
}

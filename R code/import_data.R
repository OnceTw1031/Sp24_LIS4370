#' Import data from various sources
#' 
#' This function facilitates the import of electricity data from various sources,
#' such as CSV files or databases. It ensures data consistency and prepares it
#' for further analysis.
#' 
#' @param file_path Path to the data file or connection to the database.
#' @param format Format of the data file (ex., "csv", "xlsx").
#' @param ... Additional parameters specific to the data source (ex., database credentials).
#' 
#' @return A structured dataset ready for analysis.
#' 
#' @examples
#' import_data("electricity_data.csv", format = "csv")
#' 
import_data <- function(file_path, format, ...) {
  # Load appropriate package based on the file format
  if (format == "csv") {
    data <- read.csv(file_path, ...)
  } else if (format == "xlsx") {
    data <- read.xlsx(file_path, ...)
  } else {
    stop("Unsupported file format.")
  }
  
  return(data)
}

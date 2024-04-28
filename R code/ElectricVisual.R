# Load devtools package
library(devtools)

# Navigate to the directory containing your ElectricVisual package
setwd("C:/Users/isabe/Desktop/LIS4370 R Programming/Final/GitHub/Sp24_LIS4370")

# Build package
devtools::build()

# Install package locally
devtools::install()

# Check package
devtools::check()

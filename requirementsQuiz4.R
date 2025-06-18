packages <- c("ggplot2", "dplyr", "tidyr", 
              "devtools", "mosaic")
missing <- packages[!(packages %in% installed.packages()[,"Package"])]
if (length(missing)) install.packages(missing)
invisible(lapply(packages, library, character.only = TRUE))
if ("dcData" %in% installed.packages()){
  library(dcData)
} else {
  devtools::install_github("mdbeckman/dcData")
  library(dcData)
}

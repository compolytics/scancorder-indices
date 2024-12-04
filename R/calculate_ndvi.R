#' Calculate NDVI from NIR and Red bands
#'
#' This function calculates the Normalized Difference Vegetation Index (NDVI) 
#' from Near Infrared (NIR) and Red bands.
#'
#' @param nir A numeric vector containing Near Infrared band values.
#' @param red A numeric vector containing Red band values.
#' @return A numeric vector containing NDVI values.
#' @examples
#' nir <- c(0.8, 0.7, 0.6)
#' red <- c(0.4, 0.3, 0.2)
#' ndvi_values <- calculate_ndvi(nir, red)
#' print(ndvi_values)
calculate_ndvi <- function(nir, red) {
    # Check if the input vectors have the same length
    if (length(nir) != length(red)) {
        stop("NIR and Red vectors must have the same length")
    }
     # nolint: trailing_whitespace_linter.
    # Calculate NDVI
    ndvi <- (nir - red) / (nir + red)
    
    return(ndvi)
}

#' Import project dataset
#'
#' @return A `data.frame`. The iris dataset.
#' 
#' @export

read_data <- function() {
  read.csv(here::here("data", "iris.csv"), header = TRUE)
}

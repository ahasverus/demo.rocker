#' Scatterplot of Iris dataset
#'
#' @param data a `data.frame`, the iris dataset
#'
#' @return No return value.
#' 
#' @export
#' 
#' @importFrom ggplot2 aes ggplot geom_point geom_smooth facet_wrap 
#' @importFrom ggplot2 scale_color_manual scale_fill_manual ggsave
#' @importFrom rlang .data

plot_data <- function(data) {
  
  
  ## Create figures/ folder ----
  
  dir.create(here::here("figures"), showWarnings = FALSE)
  
  
  ## Make plot ----
  
  myplot <- ggplot(data, aes(x = .data$Sepal.Length, y = .data$Sepal.Width)) +
    
    geom_point(aes(color = .data$Species)) +               
    geom_smooth(aes(color = .data$Species, fill = .data$Species)) +
    
    facet_wrap(~.data$Species, ncol = 3, nrow = 1) +
    
    scale_color_manual(values = c("#00AFBB", "#E7B800", "#FC4E07")) +
    scale_fill_manual(values = c("#00AFBB", "#E7B800", "#FC4E07"))
  
  
  ## Export to PNG ----
  
  ggsave(filename = here::here("figures", "figure_1.png"),
         plot     = myplot,
         device   = "png",
         width    = 12,
         height   = 6,
         units    = "in", 
         dpi      = 300)
  
  invisible(NULL)
}

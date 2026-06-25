args <- commandArgs(trailingOnly = TRUE)
x <- args[[1]]
if (require(heatmap)) {
  heatmap::plot_heatmap(x)
}

#!/usr/bin/env Rscript

if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop("Package 'rmarkdown' is required. Install it before running the analysis.", call. = FALSE)
}

project_dir <- normalizePath(getwd(), mustWork = TRUE)
data_dir <- Sys.getenv("MICROBIOME_PREF_DATA", unset = "data")
output_dir <- Sys.getenv("MICROBIOME_PREF_OUTPUT", unset = "outputs")

rmarkdown::render(
  input = file.path("analysis", "microbiome_preferences_analysis.Rmd"),
  params = list(
    data_dir = data_dir,
    output_dir = output_dir
  ),
  knit_root_dir = project_dir,
  envir = new.env(parent = globalenv())
)

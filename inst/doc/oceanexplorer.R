## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----here, echo = FALSE, eval = FALSE-----------------------------------------
#  path <- fs::path("tests", "testthat", "apps", "NOAA_app", "tests", "shinytest",
#                   "mytest-expected")
#  path <- fs::path_package("oceanexplorer", path)
#  fig1 <- fs::path(path, "001", ext = "png")
#  fig2 <- fs::path(path, "002", ext = "png")
#  fig3 <- fs::path(path, "003", ext = "png")
#  
#  fs::file_copy(fig1, "vignettes/get-started-screenshot1.png", overwrite = TRUE)
#  fs::file_copy(fig2, "vignettes/get-started-screenshot2.png", overwrite = TRUE)
#  fs::file_copy(fig3, "vignettes/get-started-screenshot3.png", overwrite = TRUE)

## ----screenstart, echo = FALSE, out.width="90%"-------------------------------
knitr::include_graphics("get-started-screenshot1.png")

## ----screenselect, echo = FALSE, out.width="90%"------------------------------
knitr::include_graphics("get-started-screenshot2.png")

## ----screenextract, echo = FALSE, out.width="90%"-----------------------------
knitr::include_graphics("get-started-screenshot3.png")

## ----screenaddin, echo = FALSE, out.width="90%"-------------------------------
knitr::include_graphics("get-started-screenshot4.png")

## ----setup--------------------------------------------------------------------
library(oceanexplorer)
(WOA <- get_NOAA("phosphate", 1, "December"))

## ----plot1, fig.width=7-------------------------------------------------------
plot_NOAA(WOA, depth = 1000)

## ----filter-------------------------------------------------------------------
(pts <- filter_NOAA(WOA, depth = 1000, coord = list(lon = 20, lat = -46)))

## ----plot2, fig.width=7-------------------------------------------------------
plot_NOAA(WOA, depth = 1000, points = pts)


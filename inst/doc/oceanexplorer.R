## ----include = FALSE----------------------------------------------------------
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

## ----setup, eval=interactive(), error=TRUE------------------------------------
#  # load package
#  library(oceanexplorer)
#  # get data
#  (WOA <- get_NOAA("phosphate", 1, "December"))

## ----plot1, fig.width=7, eval = interactive() && exists("WOA")----------------
#  plot_NOAA(WOA, depth = 1000)

## ----save1, echo=FALSE, eval = interactive() && exists("WOA"), message=FALSE----
#  ggplot2::ggsave("NOAA_plot1.png", plot_NOAA(WOA, depth = 1000), width = 9)

## ----graph1, echo=FALSE, eval = !exists("WOA"), out.width="100%"--------------
knitr::include_graphics("NOAA_plot1.png")

## ----filter, eval=interactive()-----------------------------------------------
#  (pts <- filter_NOAA(WOA, depth = 1000, coord = list(lon = 20, lat = -46)))

## ----plot2, fig.width=7, eval = interactive() && exists("WOA")----------------
#  plot_NOAA(WOA, depth = 1000, points = pts)

## ----save2, echo=FALSE, eval = interactive() && exists("WOA"), message=FALSE----
#  ggplot2::ggsave("NOAA_plot2.png", plot_NOAA(WOA, depth = 1000, points = pts), width = 9)

## ----graph2, echo=FALSE, eval = !exists("WOA"), out.width="100%"--------------
knitr::include_graphics("NOAA_plot2.png")


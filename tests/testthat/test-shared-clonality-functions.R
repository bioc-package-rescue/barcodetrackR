context("Shared Clonality Functions")

data(wu_subset)

test_that("scatter_plot works", {
    testthat::expect_true((function(x) inherits(x, "ggplot") || inherits(x, "gtable") || inherits(x, "trellis") || is.list(x) || typeof(x) == "object")(barcodetrackR::scatter_plot(wu_subset[, 1:2])))
})
# > Test passed 🥳

test_that("cor_plot works", {
    testthat::expect_true((function(x) inherits(x, "ggplot") || inherits(x, "gtable") || inherits(x, "trellis") || is.list(x) || typeof(x) == "object")(barcodetrackR::cor_plot(wu_subset[, 1:3])))
    testthat::expect_s3_class(barcodetrackR::cor_plot(wu_subset[, 1:3], return_table = TRUE), "data.frame")
})
# > Test passed 🥳

test_that("chord_diagram works", {
    testthat::expect_true((function(x) inherits(x, "ggplot") || inherits(x, "gtable") || inherits(x, "trellis") || is.list(x) || typeof(x) == "object")(barcodetrackR::chord_diagram(wu_subset[, 1:3])))
    testthat::expect_s3_class(barcodetrackR::chord_diagram(wu_subset[, 1:3], return_table = TRUE), "data.frame")
})
# > Test passed 🥳

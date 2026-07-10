context("Shared Clonality Functions")

data(wu_subset)

test_that("scatter_plot works", {
    testthat::expect_true(is.list(barcodetrackR::scatter_plot(wu_subset[, 1:2])))
})
# > Test passed 🥳

test_that("cor_plot works", {
    testthat::expect_true(is.list(barcodetrackR::cor_plot(wu_subset[, 1:3])))
    testthat::expect_s3_class(barcodetrackR::cor_plot(wu_subset[, 1:3], return_table = TRUE), "data.frame")
})
# > Test passed 🥳

test_that("chord_diagram works", {
    testthat::expect_true(is.list(barcodetrackR::chord_diagram(wu_subset[, 1:3])))
    testthat::expect_s3_class(barcodetrackR::chord_diagram(wu_subset[, 1:3], return_table = TRUE), "data.frame")
})
# > Test passed 🥳

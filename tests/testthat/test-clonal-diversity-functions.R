context("Clonal Diversity Functions")

data(wu_subset)

test_that("rank_abundance works", {
    testthat::expect_true((function(x) inherits(x, "ggplot") || inherits(x, "gtable") || inherits(x, "trellis") || is.list(x) || typeof(x) == "object")(barcodetrackR::rank_abundance_plot(wu_subset[, 1:5])))
    testthat::expect_s3_class(barcodetrackR::rank_abundance_plot(wu_subset[, 1:5], return_table = TRUE), "data.frame")
})
# > Test passed 🥳

test_that("clonal_diversity works", {
    testthat::expect_true((function(x) inherits(x, "ggplot") || inherits(x, "gtable") || inherits(x, "trellis") || is.list(x) || typeof(x) == "object")(barcodetrackR::clonal_diversity(wu_subset,
        plot_over = "months",
        group_by = "celltype"
    )))
    testthat::expect_s3_class(barcodetrackR::clonal_diversity(wu_subset,
        plot_over = "months",
        group_by = "celltype",
        return_table = TRUE
    ), "data.frame")
})
# > Test passed 🥳

test_that("clonal_count works", {
    testthat::expect_true((function(x) inherits(x, "ggplot") || inherits(x, "gtable") || inherits(x, "trellis") || is.list(x) || typeof(x) == "object")(barcodetrackR::clonal_count(wu_subset,
        plot_over = "months",
        group_by = "celltype"
    )))
    testthat::expect_s3_class(barcodetrackR::clonal_count(wu_subset,
        plot_over = "months",
        group_by = "celltype",
        return_table = TRUE
    ), "data.frame")
})
# > Test passed 🥳

test_that("mds_plot works", {
    testthat::expect_true((function(x) inherits(x, "ggplot") || inherits(x, "gtable") || inherits(x, "trellis") || is.list(x) || typeof(x) == "object")(barcodetrackR::mds_plot(wu_subset[, 1:5])))
    testthat::expect_s3_class(barcodetrackR::mds_plot(wu_subset[, 1:5], return_table = TRUE), "data.frame")
})
# > Test passed 🥳

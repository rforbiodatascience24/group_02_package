test_that("plot_amino_acid_counts produces a ggplot object for a valid sequence", {
  result <- plot_amino_acid_counts("ACDEFGHIKLMNPQRSTVWY")  # Use a non-empty sequence
  expect_s3_class(result, "ggplot")  # Check if the result is a ggplot object
})

test_that("plot_amino_acid_counts returns an error for an empty sequence", {
  expect_error(plot_amino_acid_counts(""))  # Check for any error on empty input, without specifying the message
})

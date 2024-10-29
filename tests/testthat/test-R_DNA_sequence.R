test_that("generate_random_dna returns a DNA sequence of correct length", {
  result <- R_DNA_sequence(10)
  expect_equal(nchar(result), 10)  # Check that the length of the result is as specified
})

test_that("generate_random_dna returns a DNA sequence containing only valid bases", {
  result <- R_DNA_sequence(20)
  expect_true(all(strsplit(result, "")[[1]] %in% c("A", "T", "G", "C")))  # Check for valid bases
})

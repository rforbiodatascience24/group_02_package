test_that("Split a base sequence into codons.", {
  result <- sequence_split("ATGCGTACG")
  expect_equal(c("ATG","CGT","ACG"),
               result)
})

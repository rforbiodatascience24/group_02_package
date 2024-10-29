test_that("transcribe_dna_to_rna correctly transcribes DNA to RNA", {
  result <- transcribe_dna_to_rna("ATCG")
  expect_equal(result, "AUCG")
})


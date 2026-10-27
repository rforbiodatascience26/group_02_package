
test_that("extract_aa_sequence returns the correct amino acid sequence", {
  expect_equal(extract_aa_sequence(c(1, 2)), "FS")
  expect_equal(extract_aa_sequence(c(1, 20)), "FR")
  expect_equal(extract_aa_sequence(c(1, 2, 3)), "FSY")
})

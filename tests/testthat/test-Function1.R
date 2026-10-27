test_that("random_DNA generates valid DNA sequences", {

  dna <- random_DNA(100)

  # Test sequence length
  expect_equal(nchar(dna), 100)

  # Test valid DNA bases
  expect_true(grepl("^[ATGC]+$", dna))

  # Test output type
  expect_type(dna, "character")

})


test_that("random_DNA returns the requested sequence length", {

  expect_equal(nchar(random_DNA(10)), 10)
  expect_equal(nchar(random_DNA(50)), 50)
  expect_equal(nchar(random_DNA(1000)), 1000)

})

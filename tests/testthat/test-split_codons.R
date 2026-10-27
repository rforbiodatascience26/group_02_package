
test_that("split_codons splits a sequence into codons", {
  expect_equal(split_codons("AUGUUUCCCAAA"),
               c("AUG", "UUU", "CCC", "AAA"))
})

test_that("split_codons uses the start argument", {
  expect_equal(split_codons("AUGUUUCCCAAA", start = 2),
               c("UGU", "UUC", "CCA"))
})


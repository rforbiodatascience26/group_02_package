test_that("plot_amino_acids returns a ggplot object", {

  protein <- "MAKLVMAAK"

  result <- plot_amino_acids(protein)

  expect_s3_class(result, "ggplot")

})


test_that("plot_amino_acids counts amino acids correctly", {

  protein <- "MAKLVMAAK"

  result <- plot_amino_acids(protein)

  plot_data <- result$data

  expect_equal(sum(plot_data$Counts), 9)

  expect_equal(
    plot_data$Counts[plot_data$Amino_acid == "A"],
    3
  )

  expect_equal(
    plot_data$Counts[plot_data$Amino_acid == "M"],
    2
  )

})

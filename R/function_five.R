#' Plot Amino Acid Frequencies
#'
#' This function counts the occurrences of each unique amino acid
#' in a protein sequence and visualizes the frequencies using
#' a bar plot.
#'
#' @param protein_sequence A character string containing a protein
#' sequence represented by single-letter amino acid codes.
#'
#' @return A ggplot object showing the frequency of each amino acid.
#'
#' @examples
#' plot_amino_acids("MAKLVMAAK")
#' plot_amino_acids("ACDEFGHIKLMNPQRSTVWY")
#'
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @export
plot_amino_acids <- function(protein_sequence) {

  amino_acids <- protein_sequence |>
    stringr::str_split(
      pattern = stringr::boundary("character"),
      simplify = TRUE
    ) |>
    as.character() |>
    unique()

  counts <- sapply(
    amino_acids,
    function(amino_acid)
      stringr::str_count(
        string = protein_sequence,
        pattern = amino_acid
      )
  ) |>
    as.data.frame()

  colnames(counts) <- "Counts"

  counts[["Amino_acid"]] <- rownames(counts)

  amino_acid_plot <- counts |>
    ggplot2::ggplot(
      ggplot2::aes(
        x = Amino_acid,
        y = Counts,
        fill = Amino_acid
      )
    ) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_acid_plot)
}

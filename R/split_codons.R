
#' Split a sequence into codons
#'
#' Splits a DNA or RNA sequence into codons (triplets of nucleotides),
#' starting from a given position, i.e. a given reading frame.
#'
#' @param sequence A character string with a DNA or RNA sequence.
#' @param start Position in the sequence where reading starts. Defaults to 1.
#'
#' @return A character vector of codons.
#' @export
#'
#' @examples
#' split_codons("AUGUUUCCCAAA")
#' split_codons("AUGUUUCCCAAA", start = 2)
split_codons <- function(sequence, start = 1){
  seq_length <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = seq_length - 3 + 1, by = 3),
                      last = seq(from = 3 + start - 1, to = seq_length, by = 3))
  return(codons)
}

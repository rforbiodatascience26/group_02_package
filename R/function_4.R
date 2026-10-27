#' Extract an amino acid sequence
#'
#' Extracts amino acids from the codon library at the specified positions
#' and combines them into a single character string.
#'
#' @param codons Integer vector specifying the positions of codons
#'   in the codon library.
#'
#' @returns A character string containing the amino acid sequence.
#' @export
#'
#' @examples
#' extract_aa_sequence(c(1, 2))
#' # Returns "FS"
extract_aa_sequence <- function(codons){
aa_sequence <- paste0(codlib[codons], collapse = "")
  return(aa_sequence)
}


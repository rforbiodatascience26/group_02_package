#' Generate a Random DNA Sequence
#'
#' This function generates a random DNA sequence of a specified length.
#' Each nucleotide (A, T, G, C) has an equal probability of being selected.
#'
#' @param n An integer specifying the length of the DNA sequence.
#'
#' @return A character string containing a randomly generated DNA sequence.
#'
#' @examples
#' random_DNA(10)
#' random_DNA(100)
#'
#' @export
random_DNA <- function(n){

  bases <- sample(c("A", "T", "G", "C"),
                  size = n,
                  replace = TRUE)

  DNA_sequence <- paste0(bases, collapse = "")

  return(DNA_sequence)
}

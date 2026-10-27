extract_aa_sequence <- function(codons){
aa_sequence <- paste0(codlib[codons], collapse = "")
  return(aa_sequence)
}


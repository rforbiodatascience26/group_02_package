#' Function2
#'
#' @param name_me2
#'
#' @returns Thymine to Uracil
#' @export
#'
name_me1 <- function(name_me2){
  name_me3 <- gsub("T", "U", name_me2)
  return(name_me3)
}

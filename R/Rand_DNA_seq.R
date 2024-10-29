#' Random DNA Sequence generator
#'
#' @param Sequence_length #Number of nucleotides the new DNA sequence should be
#'
#' @return
#' Result is a random DNA sequence with N = 'Sequence_length' nucleotides
#'
#' @export
#'
#' @examples
#'
#' X <- 10             #the length of the DNA sequence you want
#' R_DNA_sequence(X)   #Using the function on R
#'
#'
#'
R_DNA_sequence <- function(Sequence_length){
  Nucleotides <- sample(c("A", "T", "G", "C"), size = Sequence_length, replace = TRUE)
  New_sequence <- paste0(Nucleotides, collapse = "")
  return(New_sequence)
}


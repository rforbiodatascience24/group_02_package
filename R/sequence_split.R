#' Sequence splitter - Codon creator
#'
#' This function makes it so that you can split a base sequence into its codons.
#'
#' @param sequence_base The sequence of nucleotide bases given to the function
#' @param start The starting point for counting the codons
#'
#' @return Returns codons given from the base sequence
#' @export

sequence_split <- function(sequence_base, start = 1){
  n_sequence <- nchar(sequence_base)
  codons <- substring(sequence_base,
                      first = seq(from = start, to = n_sequence-3+1, by = 3),
                      last = seq(from = 3+start-1, to = n_sequence, by = 3))
  return(codons)
}

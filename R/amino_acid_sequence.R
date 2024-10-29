#' DNA to Amino acid sequence
#'
#'Converting codons to amino acid sequence
#'
#' @param codons string of a triplet of nucleotides in DNA that codes for an amino acid
#'
#' @return a peptide chain
#' @export
a_acid_sequence <- function(codons){
  peptide <- paste0(codon_table[codons], collapse = "")
  return(peptide)
}

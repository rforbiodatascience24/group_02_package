#' Transcribe DNA to RNA
#'
#' This function converts a DNA sequence to an RNA sequence by replacing all "T" nucleotides with "U".
#'
#' @param dna_sequence A character string representing a DNA sequence.
#' @return A character string representing the transcribed RNA sequence.
#' @export
transcribe_dna_to_rna <- function(dna_sequence) {
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}

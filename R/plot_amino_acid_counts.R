#' Plot Amino Acid Counts in a Sequence
#'
#' This function calculates the frequency of each amino acid in a given sequence and plots the counts as a bar chart.
#'
#' @param amino_acid_sequence A character string representing an amino acid sequence.
#' @return A ggplot object showing the frequency of each amino acid.
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @export
plot_amino_acid_counts <- function(amino_acid_sequence) {
  # Split the sequence into unique amino acids
  amino_acids <- amino_acid_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count occurrences of each amino acid
  counts <- sapply(amino_acids, function(amino_acid) stringr::str_count(string = amino_acid_sequence, pattern = amino_acid)) |>
    as.data.frame()

  # Rename columns for clarity
  colnames(counts) <- c("Counts")
  counts[["Amino_Acid"]] <- rownames(counts)

  # Plot the counts
  amino_acid_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acid, y = Counts, fill = Amino_Acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_acid_plot)
}

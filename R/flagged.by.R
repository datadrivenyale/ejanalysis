#' @title flagged.by
#' @description Flag which cells are at or above some cutoff.
#' @details For a matrix with a few cols of related data, find which cells are at/above (or below) some cutoff.
#' Returns a logical matrix, with TRUE for each cell that is at/above the cutoff.
#' Can be used in EJ analysis as 1st step in identifying places (rows) where some indicator(s) is/are at/above a cutoff, threshold value.
#'
#' @param x Data.frame or matrix of numbers to be compared to cutoff value.
#' @param cutoff The numeric threshold or cutoff to which numbers are compared. Default is arithmetic mean of row. Usually one number, but can be a vector of same length as number of rows, in which case each row can use a different cutoff.
#' @param or.tied Logical. Default is FALSE, which means we check if number in x is greater than the cutoff (>). If TRUE, check if greater than or equal (>=).
#' @param below Logical. Default is FALSE. If TRUE, uses > or >= cutoff. If FALSE, uses < or <= cutoff.
#' @return Returns a logical matrix the same size as x.
#' @seealso cols.above.which,  another name for the exact same function.
#' @seealso cols.above.count or cols.above.pct to see, for each row, count or fraction of columns with numbers at/above/below cutoff.
#' @seealso flagged.only.by to find cells that are the only one in the row that is at/above/below the cutoff.
#' @seealso rows.above.count, rows.above.pct, rows.above.which
#' @keywords EJ
#' @examples
#' out <- flagged.by(x<-data.frame(a=1:10, b=rep(7,10), c=7:16), cutoff=7)
#' x; out # default is or.tied=FALSE
#' out <- flagged.by(data.frame(a=1:10, b=rep(7,10), c=7:16), cutoff=7, or.tied=TRUE, below=TRUE)
#' out
#' out <- flagged.by(data.frame(a=1:10, b=rep(7,10), c=7:16) )
#' # Compares each number in each row to the row's mean.
#' out
#' @note Future work: these functions could have wts, na.rm, & allow cutoffs or benchmarks as a vector (not just 1 number), & have benchnames.
#' @export
flagged.by <- function(...) {
  cols.above.which(...)
}

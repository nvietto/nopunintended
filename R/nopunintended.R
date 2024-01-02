#' Prints a pun.
#'
#' @param number
#' The number (i.e., 1-33) or an empty argument.
#'
#' @return
#' A string returning the pun.
#' @export
#'
#' @examples
#' nopunintended()
#' "What did the triangle say to the circle? You're so pointless."
#' nopunintended(14)
#' "You know what's not right? (Joel questions, \"Left?\") (Ellie answers, \"Yeah.\")"
nopunintended <- function(number = NULL)
{
  if (!is.null(number) && !is.numeric(number))
  {
    stop("The input must be a number between 1 and 33.")
  }
  if (!is.null(number) && any(number < 1 | number > 33))
  {
    stop("The input must be a number between 1 and 33.")
  }
  if (is.null(number))
  {
    sample <- sample(1:nrow(data), 1)
    output <- data[sample, ]
    return(output)
  }
  else
  {
    return(data$pun[number])
  }
}

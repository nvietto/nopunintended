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
    sample <- (sample(1:nrow(data), 1))
    output <- data[sample, ]$pun
    return(output)
  }
  else
  {
    return(data$pun[number])
  }
}

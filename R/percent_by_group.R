#' Unmasking the Data
#'
#' Calculate the percentage of observations in each group
#'
#' @param data A data frame containing the observations you want to summarize.
#' @param group The column used to define the groups. This should be an unquoted column name.
#'
#' @returns A data frame containing each group, the number of observations in that group (`n`), and the percentage of observations in that group (`percent`).
#' @export
#'
#' @examples
#' my_data <- data.frame(category = c("A", "A", "B", "B", "B", "C"))
#' percent_by_group(my_data, category)
percent_by_group <- function(data, group) {
  library(dplyr)
  data %>%
    # count how many episodes are in each category
    # {{group}} lets you pass a column name into a function without putting it in quotes
    count({{ group }}) %>%
    # take's each groups count and divides it by the total number of episodes
    mutate(percent = n / sum(n) * 100)
}

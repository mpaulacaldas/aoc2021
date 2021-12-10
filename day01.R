input <- as.numeric(readLines("data-raw/day01.txt"))

# Part 1
lag <- c(NA, input[-length(input)])
sum(input - lag > 0, na.rm = TRUE)

# Part 2
example <- as.numeric(readr::read_lines(
  "199
  200
  208
  210
  200
  207
  240
  269
  260
  263"))

roll <- input + dplyr::lag(input, 1) + dplyr::lag(input, 2)
sum(roll - dplyr::lag(roll) > 0, na.rm = TRUE)


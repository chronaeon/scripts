#for matrixizing Solidity files

library(stringr)

solList <- list.files(path = "~/my_audits/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)

flatCode <- lapply(solList, readLines)

flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")

vector <- unlist(flatCodeNumbers)

numbers <- as.numeric(vector)

sortedNumbers <-  sort.int(numbers)

library(plyr)

countedNumbers <- count(numbers)

library(ggplot2)
theme_set(theme_pubr())
library(dplyr)


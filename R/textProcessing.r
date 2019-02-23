#for matrixizing Solidity files

library(stringr)


solList <- list.files(path = "~/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)

#flatten the Solidity files representing each as a single character vector
flatCode <- lapply(solList, readLines)

#extract all numbers in the code
flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")

library(ggplot2)
library(ggpubr)
theme_set(theme_pubr())

#total numbers: table(unlist(flatCodeNumbers))

flatCodeTable<-lapply(flatCodeNumbers, table)

z <- do.call(cbind, flatCodeTable[3])

vector <- unlist(flatCodeNumbers)

numbers <- as.numeric(vector)

sortedNumbers <-  sort.int(numbers)

#library(plyr)

countedNumbers <- count(numbers)

#library(dplyr)

str_count(flatCode, "withdraw")
#find all functions with "withdraw" in them

str_count(flatCode, "deposit")
#find all functions with "deposit" in them

str_count(flatCode, "transfer")
#find all functions with "transfer" in them

#str_count(flatCode, "token")

#str_count(flatCode, "set")
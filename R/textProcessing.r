

listOfPackages <- c("ggplot2", "Rcpp", "stringr", "tokenizers", "tidyverse", "plyr", "tidytext", "dplyr", "reshape2", "tm", "ngram")
new.packages <- listOfPackages[!(listOfPackages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

lapply(listOfPackages, require, character.only = TRUE)

#Scoping Solidity Code for an Audit





solList <- list.files(path = "~/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)
#solList contains file locations


#flatten the Solidity files representing each as a single character vector
flatCode <- lapply(solList, readLines)



#extract all numbers in the code
flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")

options(max.print=10000000)
#flatCodeTable<-lapply(flatCodeNumbers, table)

#z <- do.call(cbind, flatCodeTable[3])

vector <- unlist(flatCodeNumbers)

numbers <- as.numeric(vector)

sortedNumbers <-  sort.int(numbers)

countedNumbers <- count(numbers)

#removeSolBlockComments
commentyCode <- grep("(?s)\\/\\*.*?\\*\\/", (flatCode), perl=TRUE, value=TRUE)
commentlessCode <- stringr::str_replace_all(commentyCode, "(?s)\\/\\*.*?\\*\\/", " ")
commentlessChars <- as.character(commentlessCode)
ngCommentless <- tokenize_ngrams(commentlessChars)
nMelt<-melt(ngCommentless)
#removeSolBlockComments

sentencesList <- tokenize_sentences(solList)
flatCharacter <- as.character(flatCode)
sentencesList <- tokenize_lines(flatCharacter)
length(sentencesList)
sapply(sentencesList, length)
flatNgrams<-tokenize_ngrams(flatCharacter)


flatNgrams$id <- rownames(flatNgrams)
meltedNgrams<-melt(flatNgrams)
meltedDf<-as.data.frame(meltedNgrams)
rm(meltedNgrams)
str_count(flatCode, "withdraw")
#find all functions with "withdraw" in them

str_count(flatCode, "deposit")
#find all functions with "deposit" in them

str_count(flatCode, "transfer")
#find all functions with "transfer" in them

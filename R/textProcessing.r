

listOfPackages <- c("ggplot2", "Rcpp", "stringr", "tokenizers", "tidyverse", "plyr", "tidytext", "dplyr", "reshape2", "tm", "ngram")
new.packages <- listOfPackages[!(listOfPackages %in% installed.packages()[,"Package"])]

if(length(new.packages)) install.packages(new.packages)

lapply(listOfPackages, require, character.only = TRUE)
rm(new.packages)


solList <- list.files(path = "~/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)

solListFiltered <- gsub("^.*DappHub*$|^.*0x.*$|^.*test.*$|^.*kyber.*$|^.*mocks.*$|^.*node_modules.*$|^.*Migrations.*$|^.*coverageEnv.*$|^.*openzeppelin-solidity.*$|^.*cryptofin-solidity.*$|^.*0x.*$|^.*IERC20.*$|^.Bytes32.sol.*$|^.*Authorizable.sol.*$|^.*AddressArrayUtils.sol.*$|^.*CommonMath.sol.*$", "", solList, ignore.case = TRUE)
solListClean <- solListFiltered[solListFiltered !=""]
flatSol <- lapply(solListClean, readLines)
cleanCode <- gsub("(?s)\\/\\*.*?\\*\\/|\\/\\/.*", "", flatSol, ignore.case = TRUE, perl = TRUE)
cleanerCode <- cleanCode[cleanCode !=""]
#flatten the Solidity files representing each as a single character vector
#solListFiltered <- lapply(solListClean, readLines)



#extract all numbers in the code
#flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")

#options(max.print=10000000)
#flatCodeTable<-lapply(flatCodeNumbers, table)

#z <- do.call(cbind, flatCodeTable[3])

#vector <- unlist(flatCodeNumbers)

#numbers <- as.numeric(vector)

#sortedNumbers <-  sort.int(numbers)

#countedNumbers <- count(numbers)

cleanSolChar <- as.character(cleanSol)
cleanNg <- tokenize_ngrams(cleanSolChar)
cleanMelt<-melt(cleanNg)

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
str_count(flatSol, "withdraw")
#find all functions with "withdraw" in them

str_count(flatSol, "deposit")
#find all functions with "deposit" in them

str_count(flatSol, "transfer")
#find all functions with "transfer" in them

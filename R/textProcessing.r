

listOfPackages <- c("ggplot2", "Rcpp", "stringr", "r2d3", "tokenizers", "tidyverse", "plyr", "tidytext", "dplyr", "reshape2", "tm", "ngram")
new.packages <- listOfPackages[!(listOfPackages %in% installed.packages()[,"Package"])]

if(length(new.packages)) install.packages(new.packages)

lapply(listOfPackages, require, character.only = TRUE)
rm(new.packages)


solList <- list.files(path = "~/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)

#D3: https://github.com/d3/d3/wiki/Gallery
solListFiltered <- gsub("^.*DappHub*$|^.*0x.*$|^.*test.*$|^.*kyber.*$|^.*mocks.*$|^.*node_modules.*$|^.*Migrations.*$|^.*coverageEnv.*$|^.*openzeppelin-solidity.*$|^.*cryptofin-solidity.*$|^.*0x.*$|^.*IERC20.*$|^.Bytes32.sol.*$|^.*Authorizable.sol.*$|^.*AddressArrayUtils.sol.*$|^.*CommonMath.sol.*$", "", solList, ignore.case = TRUE)
solListClean <- solListFiltered[solListFiltered !=""]
fileNames <- str_extract(solListClean, "([0-9a-zA-Z\\._-]+.(sol))")
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

#count word occurrences

withdraws <- str_count(flatSol, "withdraw")

#sort withdraws
withdrawsNz <- withdraws [nzchar(gsub("[0]", "", withdraws))]
withdrawsValDecreasing <- order(withdrawsNz, decreasing = TRUE)

withdrawsGz <- which(withdraws > 0, useNames = TRUE)
withdrawsKey <- fileNames[withdrawsGz]
withdrawsKeyDecreasing <- order(withdrawsKey, decreasing = TRUE)

barplot(as.matrix(withdrawsNz), main = "Occurrences of Withdraws in Set Protocol Contracts", ylab="Total", beside = TRUE, col=rainbow(12), legend = (withdrawsKey))

#sort deposits
deposits <- str_count(flatSol, "deposit")

depositsNz <- deposits [nzchar(gsub("[0]", "", deposits))]
depositsValDecreasing <- order(depositsNz, decreasing = TRUE)

depositsGz <- which(deposits > 0, useNames = TRUE)
depositsKey <- fileNames[depositsGz]
depositsKeyDecreasing <- order(depositsKey, decreasing = TRUE)

barplot(as.matrix(depositsNz), main = "Occurrences of Deposits in Set Protocol Contracts", ylab="Total", beside = TRUE, col=rainbow(12), legend = (depositsKey))

#sort transfers
transfers <- str_count(flatSol, "transfer")

transfersNz <- transfers [nzchar(gsub("[0]", "", transfers))]
transfersValDecreasing <- order(transfersNz, decreasing = TRUE)

transfersGz <- which(transfers > 0, useNames = TRUE)
transfersKey <- fileNames[transfersGz]
transfersKeyDecreasing <- order(transfersKey, decreasing = TRUE)
transfersKeyLength <- length(transfersKey)

barplot(as.matrix(transfersNz), main = "Occurrences of Transfers in Set Protocol Contracts", ylab="Total", beside = TRUE, col=rainbow(12), xpd=TRUE, legend = (transfersKey))


#find all functions with "transfer" in them



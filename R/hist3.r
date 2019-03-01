flatCode <- lapply(solList, readLines)
flatCode
flatCode <- lapply(solList, readLines)
flatCode <- lapply(solList, readLines) warnings()
flatCode <- lapply(solList, readLines)
warnings()
flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")
flatCodeNumbers
flatCodeNumeric<-as.numeric(flatCodeNumbers)
flatCodeNumeric
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
#flatCodeNumeric<-as.numeric(flatCodeNumbers)
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
ggplot(flatCodeNumbers)
hist(flatCodeNumbers)
as.matrix(flatCodeNumbers)
as.numeric(flatCodeNumbers)
as.list(flatCodeNumbers)
apply(flatCodeNumbers, 2, as.numeric)
as.data.frame(flatCodeNumbers)
as.data.frame(lapply((flatCodeNumbers, as.numeric))
as.data.frame(lapply(flatCodeNumbers, as.numeric))
rbindlist(flatCodeNumbers, fill=TRUE)
library(stringi)
rbindlist(flatCodeNumbers, fill=TRUE)
library(data.table)
rbindlist(flatCodeNumbers, fill=TRUE)
as.data.frame(lapply(flatCodeNumbers, as.numeric))
as.data.frame(lapply(flatCodeNumbers, as.numeric))
table(unlist(flatCodeNumeric))
table(unlist(flatCodeNumbers))
lapply(flatCodeNumbers, table)
plot(flatCodeTable)
flatCodeTable<-lapply(flatCodeNumbers, table)
plot(flatCodeTable)
flatCodeTable<-lapply(flatCodeNumbers, table)[76]
flatCodeTable<-lapply(flatCodeNumbers, table)
plot(flatCodeTable)
make.frequency.list(flatCodeTable)
make.table.of.frequencies
library(make.frequency.list)
freq
()
Freq
library(ggplot2)
library(reshape2)
df
df$xvalues = 1:102
flatCodeTable
x <- 1, 2, 3
x <- (1, 2, 3)
x <- print(1, 2, 3)
x
xxx
x
x x x
x
x
x
x
x
x
x
x <- print(1:10)
x <- print([1:10])
x <- print(1:10[1:20])
x <- print(1:50)
plot(x)
plot(flatCodeTable)
typeof(x)
as.integer(flatCodeTable)
as.numeric(flatCodeTable)
flatCodeTable
as.vector(flatCodeTable)
flatCodeTableVector<-as.vector(flatCodeTable)
as.numeric(flatCodeTableVector)
as.table(flatCodeTable)
as.table(flatCodeTable)[102]
print(flatCodeTable)[102]
print(flatCodeTable[102])
as.table(print(flatCodeTable[102]))
as.numeric(print(flatCodeTable[102]))
type.convert(numeric(flatCodeNumbers))
type.convert(numeric(flatCodeTable))
type.convert(numeric(x, flatCodeTable))
type.convert(numeric(flatCodeTable, ...))
type.convert(numeric(flatCodeTable, 1))
type.convert(numeric(flatCodeTable, y))
## Numeric to integer
class(rivers)
x <- type.convert(rivers)
class(x)
output <- matrix(unlist(flatCodeTable), ncol = 10, byrow = TRUE)
do.call(cbind, flatCodeNumbers)
do.call(cbind, flatCodeTable)
do.call(cbind, flatCodeTable[100])
plot(do.call(cbind, flatCodeTable[100]))
plot(do.call(cbind, flatCodeTable[3]))
plot(do.call(cbind, flatCodeNumbers[3]))
plot(do.call(cbind, flatCodeNumbers[3, 4, 5]))
plot(do.call(cbind, flatCodeNumbers))
table(do.call(cbind, flatCodeNumbers))
(do.call(cbind, flatCodeNumbers))
do.call(cbind, flatCodeTable)
do.call(cbind, flatCodeTable[102])
do.call(cbind, flatCodeTable)
do.call(cbind, flatCodeTable[102])
x <- do.call(cbind, flatCodeTable[102])
plot(x)
x <- do.call(cbind, flatCodeTable)
x
plot(x)
x <- do.call(cbind, flatCodeTable[100])
x
x <- do.call(cbind, flatCodeTable[99])
x
plot(x)
table(x)
par()
opar <- par
par (col.lab="red")
plot(x)
hist(x)
par(help)
help(par)
ggplot(x)
ggplot(x = 1)
ggplot(x = hi)
x
plot(d, type="n", main="robbery")
set.seed(1234)
dat <- data.frame(cond = factor(rep(c("A","B"), each=200)),
rating = c(rnorm(200),rnorm(200, mean=.8)))
head(dat)
library(ggplot2)
ggplot(dat, aes(x=rating)) + geom_histogram(binwidth=.5)
ggplot(dat, aes(x=rating)) +
ggplot(dat, aes(x=rating)) +
geom_histogram(binwidth=.5, colour="black", fill="white")
x
ggplot(dat, aes(x=rating)) + geom_density()
ggplot(dat, aes(x=rating))
ggplot(dat, aes(x=[,1]))
library(rattle)
# To generate a density plot.
library(ggplot2)
cities <- c("Canberra", "Darwin", "Melbourne", "Sydney")
ds <- subset(weatherAUS, Location %in% cities & ! is.na(Temp3pm))
p  <- ggplot(ds, aes(Temp3pm, colour=Location, fill=Location))
p  <- p + geom_density(alpha=0.55)
p
library(lattice)
densityplot(~ x)
x
x <- do.call(cbind, flatCodeTable[98])
x
densityplot(~ x)
y <- do.call(cbind, flatCodeTable[99])
z <- do.call(cbind, flatCodeTable[100])
densityplot(~ x)
y
z
densityplot(~ x, y, z)
densityplot(~ x + y + z)
z <- do.call(cbind, flatCodeTable)
densityplot(~ z)
z <- do.call(cbind, flatCodeTable[1, 2])
z <- do.call(cbind, flatCodeTable[1])
z <- do.call(cbind, flatCodeTable[1, 2, 3])
z <- do.call(cbind, flatCodeTable[1, 2, 3, 4])
z <- do.call(cbind, flatCodeTable[100-102])
z <- do.call(cbind, flatCodeTable[100])
z
z <- do.call(cbind, flatCodeTable[3])
z
densityplot(~ z)
z <- do.call(cbind, flatCodeNumbers[3])
z
densityplot(~ z)
z <- do.call(cbind, flatCodeNumbers)
z
densityplot(~ z)
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
#z <- do.call(cbind, flatCodeTable[3])
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
z <- do.call(cbind, flatCodeTable[3])vector
vector
numbers
sortedNumbers
#for matrixizing Solidity files
library(stringr)
solList <- list.files(path = "~/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)
#flatten the Solidity files representing each as a single character vector
flatCode <- lapply(solList, readLines)
#extract all numbers in the code
flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")
#flatCodeTable<-lapply(flatCodeNumbers, table)
#z <- do.call(cbind, flatCodeTable[3])
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
#for matrixizing Solidity files
library(stringr)
solList <- list.files(path = "~/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)
#flatten the Solidity files representing each as a single character vector
flatCode <- lapply(solList, readLines)
#extract all numbers in the code
flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")
#flatCodeTable<-lapply(flatCodeNumbers, table)
#z <- do.call(cbind, flatCodeTable[3])
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
sortedNumbers
countedNumbers
#for matrixizing Solidity files
library(stringr)
solList <- list.files(path = "~/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)
#flatten the Solidity files representing each as a single character vector
flatCode <- lapply(solList, readLines)
#extract all numbers in the code
flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")
#flatCodeTable<-lapply(flatCodeNumbers, table)
#z <- do.call(cbind, flatCodeTable[3])
vector <- unlist(flatCodeNumbers)
numbers <- as.numeric(vector)
sortedNumbers <-  sort.int(numbers)
library(plyr)
countedNumbers <- count(numbers)
library(dplyr)
str_count(flatCode, "withdraw")
#find all functions with "withdraw" in them
str_count(flatCode, "deposit")
#find all functions with "deposit" in them
str_count(flatCode, "transfer")
#find all functions with "transfer" in them
countedNumbers
count
count(numbers)
numbers
typeof(flatCode)
flatCodeNumbers
vector
plot vector
plot(vector)
graph(vector)
chart(vector)
frequency(vector)
par(vector)
boxplot(vector)
codeNumericVector <- as.numeric(vector)
typeof(codeNumericVector)
codeNumericVector
plot(codeNumericVector)
boxplot(codeNumericVector)
frequency(codeNumericVector)
x<-codeNumericVector seq(-5, 5, 0.1)
x
plot(x)
plot(codeNumericVector)
plot(x, sin(x))
plot(x, sin(5))
plot(x, sin(y))
as.data.frame(codeNumericVector)
dataFrameVector<-as.data.frame(codeNumericVector)
plot(dataFrameVector)
plot(dataFrameVector)
write.csv(dataFrameVector, 'dataFrameVector.csv')
colnames(dataFrameVector[1]<-"number")
write.csv(dataFrameVector, 'dataFrameVector.csv')
dataFrameVector<-as.data.frame(codeNumericVector)
write.csv(dataFrameVector, 'dataFrameVector.csv')
dataFrameVector<-as.data.frame(codeNumericVector)
dataFrameVector<-c("number", "value")
write.csv(dataFrameVector, 'dataFrameVector.csv')
write.csv(dataFrameVector, 'dataFrameVector.csv')
dataFrameVector<-as.data.frame(codeNumericVector)
names(dataFrameVector)[1]<-"hi"
write.csv(dataFrameVector, 'dataFrameVector.csv')
names(dataFrameVector)[0]<-"hi"
write.csv(dataFrameVector, 'dataFrameVector.csv')
names(dataFrameVector)<-"hi"
write.csv(dataFrameVector, 'dataFrameVector.csv')
names(dataFrameVector)[5]<-"hi"
names(dataFrameVector)[2]<-"hi"
names(dataFrameVector)[1]<-"hi"
write.csv(dataFrameVector, 'dataFrameVector.csv')
dataFrameVector<-as.data.frame(codeNumericVector)
write.csv(dataFrameVector, 'dataFrameVector.csv')
as.numeric(codeNumericVector)
dataNumericVector<-as.numeric(codeNumericVector)
write.csv(dataNumericVector, 'dataFrameVector.csv')
plot(dataNumericVector)
cat(dataNumericVector)
dataNumericList<-cat(dataNumericVector)
dataNumericList
dataNumericList <- cat(dataNumericVector)
frequency(cat(dataNumericVector))
data.table(dataNumericVector)
dataNumericTable<-data.table(dataNumericVector)
dataNumericTable
plot(dataNumericTable)
data(dataNumericTable)
cat(dataNumericTable)
View(dataNumericTable)
names(data)
names(dataNumericTable)
table(dataNumericVector$table)
freq(dataNumericVector)
Freq(dataNumericVector)
dataNumericVector
dataNumericList
dataNumericTable
dataNumericTable[names(dataNumericTable)==2556]
sum(dataNumericVector == x)
dataNumericVector
plot(sortedNumbers)
flattenedCodeDf<-as.data.frame(sortedNumbers)
flattenedCodeDf
plot(flattenedCodeDf)
unlistedNumbers<-unlist(flatCodeNumbers)
sortNumbers<-sort(unlistedNumbers)
dfNumbers<-as.data.frame(sortNumbers)
plot(dfNumbers)
dfNumbers
sort(dfNumbers, decreasing = TRUE)
sort(dfNumbers, decreasing = FALSE)
sort(dfNumbers)
vector <- unlist(flatCodeNumbers)
numbers <- as.numeric(vector)
sortedNumbers <-  sort.int(numbers)
sortedNumbers
plot(sortedNumbers)
boxplot(sortedNumbers)
options(max.print=1000000)
boxplot(sortedNumbers)
sortedNumbers
library(stringr)
library(tokenizers)
library(tidyverse)
list.of.packages <- c("ggplot2", "Rcpp", "stringr", "tokenizers", "tidyverse")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
sentencesList <- tokenize_sentences(solList)
sentencesList
sentencesList <- tokenize_sentences(flatCode)
flatCode
sentencesList <- tokenize_regex(flatCode)
sentencesList <- tokenize_lines(flatCode)
flatVector <- flatCode
flatVector <- as.vector(flatCode)
flatVector
sentencesList <- tokenize_lines(flatCode)
sentencesList <- tokenize_lines(flatVector)
flatList <- as.list(flatCode)
flatList
sentencesList <- tokenize_lines(flatList)
flatCharacter <- as.character(flatCode)
sentencesList <- tokenize_lines(flatCharacter)
sentencesList
sentencesList <- tokenize_sentences(flatCharacter)
sentencesList
sentencesList <- tokenize_lines(flatCharacter)
length(sentencesList)
length(flatCharacter)
length(flatCode)
length(sentencesList[[1]])
length(sentencesList[[2]])
list.of.packages <- c("ggplot2", "Rcpp", "stringr", "tokenizers", "tidyverse", "plyr", "dplyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
length(sentencesList[[2]])
savehistory("~/scripts/R/hist2.r")
sapply(sentencesList, length)
sum(sapply(sentencesList, length))
sentencesList <- tokenize_lines(flatCharacter)
sentencesList
tokenize_regex(sentencesList)
tokenize_ngrams(sentencesList)
tokenize_ngrams(characterList)
tokenize_ngrams(flatCharacter)
flatNgrams<-tokenize_ngrams(flatCharacter)
#for matrixizing Solidity files
list.of.packages <- c("ggplot2", "Rcpp", "stringr", "tokenizers", "tidyverse", "plyr", "dplyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
solList <- list.files(path = "~/set-protocol-contracts/contracts", pattern = "\\.sol$", recursive = TRUE, full.names = TRUE)
#flatten the Solidity files representing each as a single character vector
flatCode <- lapply(solList, readLines)
#extract all numbers in the code
flatCodeNumbers <- str_extract_all(flatCode,"[0-9]+")
options(max.print=1000000)
#flatCodeTable<-lapply(flatCodeNumbers, table)
#z <- do.call(cbind, flatCodeTable[3])
vector <- unlist(flatCodeNumbers)
numbers <- as.numeric(vector)
sortedNumbers <-  sort.int(numbers)
countedNumbers <- count(numbers)
sentencesList <- tokenize_sentences(solList)
sentencesList <- tokenize_sentences(flatCode)
flatCharacter <- as.character(flatCode)
sentencesList <- tokenize_lines(flatCharacter)
length(sentencesList)
sapply(sentencesList, length)
flatNgrams<-tokenize_ngrams(flatCharacter)
str_count(flatCode, "withdraw")
#find all functions with "withdraw" in them
str_count(flatCode, "deposit")
#find all functions with "deposit" in them
str_count(flatCode, "transfer")
#find all functions with "transfer" in them
sentencesList <- tokenize_sentences(solList)
flatCharacter <- as.character(flatCode)
sentencesList <- tokenize_lines(flatCharacter)
length(sentencesList)
sapply(sentencesList, length)
flatNgrams<-tokenize_ngrams(flatCharacter)
sentencesList <- tokenize_sentences(solList)
flatCharacter <- as.character(flatCode)
sentencesList <- tokenize_lines(flatCharacter)
length(sentencesList)
sapply(sentencesList, length)
flatNgrams<-tokenize_ngrams(flatCharacter)
flatNgrams
plot(flatNgrams)
dfNgrams <- as.data.frame(flatNgrams)
as.data.frame(flatNgrams)
as.vector(flatNgrames)
as.vector(flatNgrams)
vectorNgrams<-as.vector(flatNgrams)
as.data.frame(vectorNgrams)
require(reshape2)
flatNgrams$id <- rownames(flatNgrams)
flatNgrams
melt(flatNgrams)
meltedNgrams<-melt(flatNgrams)
plot(meltedNgrams)
count(meltedNgrams)
meltedNgrams
sort(meltedNgrams)
as.data.frame(meltedNgrams)
meltedDf<-as.data.frame(meltedNgrams)
meltedDf
sort(meltedDf)
cat(meltedDf)
savehistory("~/scripts/R/hist3.r")

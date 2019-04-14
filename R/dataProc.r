tx <- read.csv("~/Downloads/64a.csv")
erc <- read.csv("~/Downloads/export-token-0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c.csv")

install.packages("rjson")
require("rjson")
fromJSON(file = input.json)
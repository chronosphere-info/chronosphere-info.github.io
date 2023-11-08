setwd("/mnt/sky/Dropbox/WorkSpace/2019-07-08_chronosphere/chronos2/")

# master record
library(RSQLite)
library(DBI)


# establish connection to chronosphere Relational Database
con <- dbConnect(RSQLite::SQLite(), "db/chronos.sqlite")
items <- dbReadTable(con, "items")	
products <- dbReadTable(con, "products")	
series <- dbReadTable(con, "series")	
sources <- dbReadTable(con, "sources")	


# number of entities
dat <- data.frame(
	items=nrow(items),
	products=nrow(products),
	series=nrow(series),
	sources=nrow(sources)
)

# write it into the webpage
write.csv(dat, file="webpage/_data/counts.csv", row.names=FALSE)

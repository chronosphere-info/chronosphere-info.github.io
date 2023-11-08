setwd("/mnt/sky/Dropbox/WorkSpace/2019-07-08_chronosphere/chronos2/")

# master record
library(RSQLite)
library(DBI)
library(yaml)


# establish connection
con <- dbConnect(RSQLite::SQLite(), "db/chronos.sqlite")
sources <- dbReadTable(con, "sources")	
series <- dbReadTable(con, "series")	
products <- dbReadTable(con, "products")	
resolutions <- dbReadTable(con, "resolutions")	
items <- dbReadTable(con, "items")	
codes <- dbReadTable(con, "codes")	
classes <-dbReadTable(con, "classes")	 
languages <-dbReadTable(con, "languages")	 
licenses <-dbReadTable(con, "licenses")	 

# 0. create the data pages
topics <- dbReadTable(con, "topics")	


#I. create new page items

tops <- unique(sources$topicID)
entire <- list()
for(i in 1:length(tops)){
	current <- sources[sources$topicID==tops[i],]
	this<- list()
	for(j in 1:nrow(current)){
		this[[j]] <- list(src=current[j, "src"], sourceName=paste0(current[j, "sourceName"]))
	}
	thisName <-topics[tops[i]==topics$topicID, "topic"] 
	entire[[i]] <- list(name=thisName, content=this)
}

writeLines(as.yaml(entire), con=paste0("webpage/_data/sources.yml"))

# 1. iterate for every source

for (i in 1:nrow(sources)){
	# the source
	src <- sources$src[i]
	# read in the template
	lineByLine <- readLines("webpage/templates/src.md")

	# replace fields: read in as text, gsub, write out
	thisSource<- sources[sources$src==src, ]
	sourceSeries<- series[series$sourceID==thisSource$sourceID, ]


	# the default series
	defaultSeries <- sourceSeries[sourceSeries$seriesID==thisSource$defaultSeries, "ser"]

	# the series details
	yaml <- list()

	for(k in 1:nrow(sourceSeries)){
		code <- sourceSeries$ser[k]
		name <- sourceSeries$seriesName[k]
		this <- list(code=code, name=name)

		yaml <- c(yaml, list(this))
	}

	serinfo <- yaml::as.yaml(yaml)

	# replacement
	lineByLine <- gsub("<src>", src, lineByLine)
	lineByLine <- gsub("<title>", paste0("\"", thisSource$sourceName, "\""), lineByLine)
	lineByLine <- gsub("<serinfo>", serinfo, lineByLine)
	# exception
  thisSource$sourceDescription[is.na(thisSource$sourceDescription)] <- ""
	lineByLine <- gsub("<sourceDescription>", thisSource$sourceDescription, lineByLine)
	lineByLine <- gsub("<defaultSeries>", defaultSeries, lineByLine)
	lineByLine <- gsub("<sourceURL>", thisSource$sourceURL, lineByLine)
  thisSource$sourceShort[is.na(thisSource$sourceShort)] <- ""
	lineByLine <- gsub("<sourceShort>", thisSource$sourceShort, lineByLine)
  thisSource$logo[is.na(thisSource$logo)] <- ""
	lineByLine <- gsub("<logo>", thisSource$logo, lineByLine)

	# write this out
	file.remove(paste0("webpage/temporary/", src, ".md"))
	writeLines(lineByLine, con=paste0("webpage/temporary/", src, ".md"))

}

# 2. iterate for every series
for(j in 1:nrow(series)){
#	j<-5

	# the focal series 
	thisSer <- series[j, ]

	# the source of this series
	thisSource <- sources[thisSer$sourceID==sources$sourceID, ]
	
	# all products of this series
	seriesProducts <- products[products$seriesID==thisSer$seriesID, ]


	seriesProducts <- merge(seriesProducts, resolutions, by="resolutionID", all.x=TRUE, all.y=FALSE)
	seriesProducts <- merge(seriesProducts, licenses, by.x="productLicense", by.y="licenseID")

	

	# the src
	src <- thisSource$src

	# the
	ser <- thisSer$ser
	
	# Read in the template
	lineByLine <- readLines("webpage/templates/ser.md")


	# the items of the series
	seriesItems <- merge(seriesProducts, items, by="productID", all.x=TRUE, all.y=FALSE)
	seriesItems <- merge(seriesItems, codes, all.x=TRUE, all.y=FALSE, by="codeID")
	seriesItems <-merge(seriesItems, languages, by="languageID")
	seriesItems <-merge(seriesItems, classes, by.x="codeClass", by.y="classID")
	seriesItems <- seriesItems[, c("productID", "languageName", "className")]

	# the languages
	langs<- c("null",unique(seriesItems$languageName))

	# the list of products 
	yaml <- list()
	for(k in 1:nrow(seriesProducts)){

		# the current items of this product
		currentItems <- seriesItems[seriesItems$productID==seriesProducts$productID[k],]
		class <- paste(paste0(currentItems$languageName, ": ", currentItems$className), collapse=", ")

		version <- seriesProducts$ver[k]
		res <- seriesProducts$resString[k]
		if(is.na(res)) res <- "null"
		date <- seriesProducts$productDate[k]
		license <- seriesProducts$licenseName[k]
		this <- list(version=version, res=res, date=date, license=license, class=class)
		yaml <- c(yaml, list(this))
	}

	prodInfo <- yaml::as.yaml(yaml)
	

	# the 
	lineByLine <- gsub("<src>", src, lineByLine)
	lineByLine <- gsub("<sourceName>", paste0("\"",thisSource$sourceName,"\""), lineByLine)
	lineByLine <- gsub("<seriesName>", paste0("\"",thisSer$seriesName,"\""), lineByLine)
	lineByLine <- gsub("<ser>", ser, lineByLine)
	lineByLine <- gsub("<srcName>", paste0("\"", thisSource$sourceName, "\""), lineByLine)
	if(is.na(thisSource$logo)) thisSource$logo <- "null"
	lineByLine <- gsub("<logo>", paste0("\"", thisSource$logo, "\""), lineByLine)
	if(is.na(thisSer$API)) thisSer$API <- "null"
	lineByLine <- gsub("<api>", thisSer$API, lineByLine)
	lineByLine <- gsub("<prodinfo>", prodInfo, lineByLine)
	if(is.na(thisSer$seriesDescription)) thisSer$seriesDescription <- "null"
	lineByLine <- gsub("<seriesDescription>", thisSer$seriesDescription, lineByLine)
	lineByLine <- gsub("<langinfo>", yaml::as.yaml(langs), lineByLine)


	

	file.remove(paste0("webpage/temporary/", src, "_", ser, ".md"))
	writeLines(lineByLine, con=paste0("webpage/temporary/", src, "_", ser, ".md"))

}


# II. Copy over the pages to deployed directory

# !Check whether pages have changed:  if new page or change in md5, copy over
# otherwise keep the old one
for (i in 1:nrow(sources)){
	src <- sources$src[i]
	file.remove(paste0("webpage/pages/data/src/", src, ".md"))
	file.copy(paste0("webpage/temporary/", src, ".md"), paste0("webpage/pages/data/src/", src, ".md"))}

# for every series
for (j in 1:nrow(series)){
	thisSer <- series[j, ]
	ser <- thisSer$ser
	src <- sources[thisSer$sourceID==sources$sourceID, "src"]

	file.remove(paste0("webpage/pages/data/ser/", src,"_", ser, ".md"))
	file.copy(paste0("webpage/temporary/", src, "_", ser, ".md"), paste0("webpage/pages/data/ser/", src,"_", ser, ".md"))
}





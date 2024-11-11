---
layout: page
title: Datasets 
menubar: data_categ
hero_image: "/images/backgrounds/mountain.jpg"
permalink: /model/datasets/
---


# Structure

## 1. Data *Items*

Items represent the lowest-level entities of the chronosphere framework. A data **item** is a programming object-level representation of a dataset with a definite structure, i.e. a programming class. Users (i.e. researchers or analysts) interact with **items**. 

**Items** are imported by a client, which executes some code that instantiates the object. They are typically read in from *data files* and/or structured by some *code* that is assigned to **item**. A programming *class* and some *code* is always mapped to an **item**, and data files can be.

## 2. Data *Products*

Although **items** represent the basic technical units, the fundamental semantic entity of the chronosphere is the data **product**. The product represents colloquial "data" that represent a certain amount of information: it does not matter whether a `.csv` or `.parquet` file is used to store the same data or whether it is present in the form of a `Pandas.DataFrame` or an R `data.table`. If the content is the same, all represent the same data product.   

Data products have well-defined boundaries in terms of content, size and meaning. The abtract data `products` are always manifeested in an `item`. 

Represent the state-of-the-art at a given point in time and can always be assigned to a date of finalization publication, and or a *version* identifier. They can also be altered in slight ways fo fulfil a specific function (e.g. *resolution*). 

## 3. Data *Series*

Series are a set of *products* that are derived using specific rules - in many cases with the same programming pipeline, which applied to an updated set of data to create a specific data *product*. Examples include database API calls that compile the same table structure from the most up-to-date state of a database (such as series from the [Paleobiology Database]()), and named data products that are released at either regular or irregular intervals. Products within the same series are expected to have the same overall structure, but different content. 
 
The definition of **series** has been one of the primary goals of the chronosphere: it allows the quick substitution of differently-versioned products of the same **series**, which is a technical prerequisite to [tracing scientific results]() through time in the face of changing data.   


## 4. Data *Sources*

**Sources** are either formal or informal entites that can be tied data structures. This level of hierarchy helps with organizing information and finding information that can be tied to an organization, a database or a scientific paper. 

# Use

Items can be located by referring to its coordinates - usually from top- to lower-level of hierarchy. 

Shorthands are used to identify items.

| Coordinate |   | example |
|------------|---|---------|
| Source     |   |         |
| Series     |   |         |
| Product    |   |         |
| item       |   |         |


# Recommendations

- For publications 

Download the data that you use with the 

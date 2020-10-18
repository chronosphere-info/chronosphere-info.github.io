---
title: Macrostrat	(macrostrat)
permalink: /docs/macrostrat/
---
Macrostrat is a platform for the aggregation and distribution of geological data relevant to the spatial and temporal distribution of sedimentary, igneous, and metamorphic rocks as well as data extracted from them.




### Available variables 

all - Stratigraphic Database

The dataset downloaded from [here](https://macrostrat.org/).

This dataset requires the 'rgdal' package to load.

Access the stratigraphic database variable ("all") of the "macrostrat" dataset with a `fetch()` function:

```{r}
 strat <- fetch("macrostrat", "all")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?


```{r}
strat <- fetch(dat = "macrostrat", var = "all", dir, verbose=FALSE)

```

#### Resolution 

none

#### Archive size

macrostrat_all_20200519: 19.7 MB

#### Version

20200519

#### Licence


[CC-BY](https://opendefinition.org/licenses/cc-by/)


### Reference

Acknowledge Macrostrat as the source of any information or data. 

[www.macrostrat.org](URL: https://macrostrat.org/)



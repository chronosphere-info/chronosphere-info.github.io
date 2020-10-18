---
title: The PaleoReefs Database (pared)
permalink: /docs/pared/
---
A comprehensive relational database on pre-Quaternary Phanerozoic reefs. The database contains coded and standardized information on position/paleoposition, age, reef type, dimensions, environmental setting, paleontological and petrographical features, and reservoir quality of Phanerozoic reefs.


### Available variables 

occs - Public Reef occurrences

The dataset downloaded from [here](https://www.paleo-reefs.pal.uni-erlangen.de/).

Access the public reef occurrences variable ("occs") of the "pared" dataset with a `fetch()` function:

```{r}
 reefs <- fetch("pared", "occs")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
bedrock <- fetch(dat = "pared", var = "occs", dir, verbose=FALSE)

```

#### Resolution 

none

#### Archive size

pared_occs_20191118:2.07 MB

pared_occs_20200217:2.07 MB

#### Version

20191118

20200217

#### Licence


Not specified


### Reference

Kiessling, W., & Flügel, E. (2002). Paleoreefs - A Database on Phanerozoic Reefs. In Phanerozoic Reef Patterns: Vol. Phanerozoic Reef Patterns (pp. 77-92).

[www.paleo-reefs.pal.uni-erlangen.de](URL: https://www.paleo-reefs.pal.uni-erlangen.de//)






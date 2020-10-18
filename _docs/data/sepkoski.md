---
title: J.J. Sepkoski's compendium (sepkoski)
permalink: /docs/sepkoski/
---
The purpose of this database is to allow users to easily search and summarize Sepkoski's global genus compendium on the basis of Evolutionary Fauna, Phylum, or Class. You can recover customized lists of genera and their stratigraphic ranges (according to Sepkoski) as well as summaries of genus richness and taxonomic rates of evolution. 

### Available variables 

genera - Startigraphic ranges of marine genera.

The dataset downloaded from [here](http://strata.geology.wisc.edu/jack/).

Access the stratigraphic ranges of marine genera variable ("genera") of the "sepkoski" dataset with a `fetch()` function:

```{r}
 margen <- fetch("sepkoski", "genera")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
margen <- fetch(dat = "sepkoski", var = "genera", dir, verbose=FALSE)

```

#### Resolution 

none

#### Archive size

sepkoski_genera_2002_kiessling: 2.71 MB

#### Version

2002_kiessling

#### Licence

Not specified 


### Reference

Sepkoski, J. J., Jablonski, D. & Foote, M. (2002). A compendium of fossil marine genera. Bulletins of American Paleontology (363)

[www.strata.geology.wisc.edu/jack](URL:http://strata.geology.wisc.edu/jack/)








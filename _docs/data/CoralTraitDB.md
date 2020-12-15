---
title: Coral Trait Database (CoralTraitDB)
permalink: /docs/CoralTraitDB/
---
The Coral Trait Database, a curated database of trait information for coral species from the global oceans



### Available variables 

release - Official Release

The dataset downloaded from [here](https://doi.org/10.6084/m9.figshare.2067414.v1).

Access the Official release variable (`"release"`) of the `"CoralTraitDB"` dataset with a `fetch()` function:

```{r}
 ctdb <- fetch("CoralTraitDB")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
ctdb <- fetch(dat = "CoralTraitDB", var = "release", dir, verbose=FALSE)

```

#### Resolution 

none



#### Archive size

CoralTraitDB_release_1.1.1.zip: 767.1 KB

#### Version

1.1.1.

#### Licence

CC-BY 4.0

### Reference


Madin, J. (2016). Coral Trait Database 1.1.1. https://doi.org/10.6084/m9.figshare.2067414.v1

Madin, J. S., Anderson, K. D., Andreasen, M. H., Bridge, T. C. L., Cairns, S. D., Connolly, S. R., Darling, E. S., Diaz, M., Falster, D. S., Franklin, E. C., Gates, R. D., Harmer, A. M. T., Hoogenboom, M. O., Huang, D., Keith, S. A., Kosnik, M. A., Kuo, C.-Y., Lough, J. M., Lovelock, C. E., … Baird, A. H. (2016). The Coral Trait Database, a curated database of trait information for coral species from the global oceans. Scientific Data, 3(1), 160017. https://doi.org/10.1038/sdata.2016.17




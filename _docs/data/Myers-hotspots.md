---
title: Biodiversity Hotspots - Myers et al. (Myers-hotspots)
permalink: /docs/Myers-hotspots/
---
Biodiversity hotspots based on the origin work of Myers et al. 2000. 


### Available variables 

[both - Outer limits and hotspot areas](#outer-limits-and-hotspot-areas)

The dataset downloaded from [here](https://zenodo.org/record/3261807).

[hotspot-area - Hotspot areas](#hotspot-areas)

The dataset downloaded from [here](https://zenodo.org/record/3261807).

[outer-limit - Outer limits of dispersed hotspot patches](#outer-limits-of-dispersed-hotspot-patches)

The dataset downloaded from [here](https://zenodo.org/record/3261807).

	
### Outer limits and hotspot areas

Terrestrial biodiversity hotspots originally defined using floral endemism and habitat destruction (Myers et al. 2000). 
The shapefile contains both the actual hotspot areas and their limits of patches dispersed over multiple islands. Previous versions will be incorporated on demand. See https://zenodo.org/record/3261807 for changes since the original original version.

Access the (default) "Outer limits and hotspot areas" variable (`"both"`) of the `"Myers-hotspots"` dataset with the `fetch()` function:

```{r}
 maps <- fetch("Myers-hotspots")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
maps <- fetch(dat = "Myers-hotspots", var = "both", dir, verbose=FALSE)

```


#### Archive size

13.5 MB

#### Version

2016.1 

#### Licence

[CC-BY-SA](https://creativecommons.org/licenses/by-sa/4.0/)


### Hotspot areas

Actual hotspot areas. A subset of the `"both"` variable

Access the (default) "Hotspot areas" variable (`"hotspot-area"`) of the `"Myers-hotspots"` dataset with the `fetch()` function:

```{r}
 maps <- fetch("Myers-hotspots", var="hotspot-area")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
maps <- fetch(dat = "Myers-hotspots", var = "hotspot-area", dir, verbose=FALSE)

```


#### Archive size

9.0 MB

#### Version

2016.1 

#### Licence

[CC-BY-SA](https://creativecommons.org/licenses/by-sa/4.0/)

### Outer limits of dispersed hotspot patches

Shapes that outline hotspots that are dispersed over disjunct patches of land. A subset of the `"both"` variable

Access the "Outer limits of dispersed hotspot patches" variable (`"outer-limit"`) of the `"Myers-hotspots"` dataset with the `fetch()` function:

```{r}
 maps <- fetch("Myers-hotspots", var="outer-limit")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
maps <- fetch(dat = "Myers-hotspots", var = "outer-limit", dir, verbose=FALSE)

```


#### Archive size

4.6 MB

#### Version

2016.1 

#### Licence

[CC-BY-SA](https://creativecommons.org/licenses/by-sa/4.0/)



### References

Myers, N., Mittermeier, R. A., Mittermeier, C. G., da Fonseca, G. A. B., & Kent, J. (2000). Biodiversity hotspots for conservation priorities. Nature, 403(6772), 853–858. https://doi.org/10.1038/35002501

Hoffman, M., Koenig, K., Bunting, G., Costanza, J.,  & Williams, K. J. (2016). Biodiversity Hotspots (version 2016.1) (Version 2016.1) [Data set]. Zenodo. http://doi.org/10.5281/zenodo.3261807

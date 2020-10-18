---
title: Hadley Centre Sea Ice and Sea Surface Temperature data set (HadISST1)
permalink: /docs/HadISST1/
---
HadISST1 is the the Met Office Hadley Centre's sea ice and sea surface temperature (SST) data set.HadISST1 replaces the global sea ice and sea surface temperature (GISST) data sets and is a unique combination of monthly globally complete fields of SST and sea ice concentration on a 1x1 latitude-longitude grid from 1871.



### Available variables 

sst - Sea Surface Temperature.

The dataset downloaded from [here](https://www.metoffice.gov.uk/hadobs/hadisst/).

This dataset requires the 'ncdf4' package to load.

Access the sea surface temperature variable ("sst") of the "HadISST1" dataset with a `fetch()` function:

```{r}
 maps <- fetch("HadISST1", "sst")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

The argument `na` is a logical flag to trigger the removal of placeholder values - it also forces the dataset in the memory.

```{r}
maps <- fetch(dat = "HadISST1", var = "sst", dir, verbose=FALSE, na = TRUE)

```


#### Resolution 

1.0

#### Archive size

HadISST1_sst_20191212_1: 444 MB

#### Version

20191212

#### Licence


Not specified



### Reference

Rayner, N. A., Parker, D. E., Horton, E. B., Folland, C. K., Alexander, L. V., Rowell, D. P., and Kaplan, A. (2003). Global analyses of sea surface temperature, sea ice, and night marine air temperature since the late nineteenth century. Journal of Geophysical Research: Atmospheres, 108(D14), 4407. [doi.org/10.1029/2002JD002670](URL: https://doi.org/10.1029/2002JD002670//)

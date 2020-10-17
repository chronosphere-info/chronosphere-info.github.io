---
title: ETOPO1 Global Relief Model (ETOPO1)
permalink: /docs/ETOPO1/
---
ETOPO1 is a 1 arc-minute global relief model of Earth's surface that integrates land topography and ocean bathymetry. It was built from numerous global and regional data sets. Data were converted to the PanMap layer format in 14 contour lines from 500 to 7000 meter in steps of 500 m.

### Available variables

[bed - Bedrock](#bedrock)

[ice - Ice surface](#ice-surface)


### Bedrock 

ETOPO1 Global Relief Model for bedrock.

Access the bedrock variable ("bed") of the dataset with the `fetch()` function:

```{r}
bedrock <- fetch("ETOPO1","bed")

```

#### Resolution 

0.017

0.100

1.000

#### Archive size

ETOPO1_bed_c_20110606_tiff_0.017: 445 MB
ETOPO1_bed_c_20110606_tiff_0.1: 27.9 MB
ETOPO1_bed_c_20110606_tiff_1: 295 KB

#### Version

c_20110606_tiff 

#### Licence

[CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/)


### Ice surface 

ETOPO1 Global Relief Model for ice surface. 

Access the ice surface variable ("ice") of the ETOPO1 dataset with the `fetch()` function:

```{r}

icesurf <- fetch("ETOPO1", "ice")

```

#### Resolution 

0.017

0.100

1.000

#### Archive size

ETOPO1_ice_c_20110606_tiff_0.017:445 MB
ETOPO1_ice_c_20110606_tiff_0.1: 27.7 MB
ETOPO1_ice_c_20110606_tiff_1: 296 KB


#### Version

c_20110606_tiff 

#### Licence

[CC-BY 3.0](https://creativecommons.org/licenses/by/3.0/)


### References

Amante, C., & Eakins, B. W. (2009). ETOPO1 Global Relief Model converted to PanMap layer format [Data set].

NOAA-National Geophysical Data Center [doi.org/10.1594/PANGAEA.769615](URL: https://doi.org/10.1594/PANGAEA.769615//)

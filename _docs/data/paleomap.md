---
title: PaleoMAP Project (paleomap)
permalink: /docs/paleomap/
---
The PaleoMAP Project is to illustrate the plate tectonic development of the ocean basins and continents, as well as the changing distribution of land and sea during the past 1100 million years.



### Available variables 


[dem - PaleoDEM Digital Elevation Models](#paleodem-digital-elevation-models)

[model - Plate Tectonic Reconstruction Model](#plate-tectonic-reconstruction-model)

[paleoatlas -PaleoAtlas paleorasters](#paleoatlas-paleorasters)



### PaleoDEM Digital Elevation Models

A paleo-digital elevation model (paleoDEM) is a digital representation of paleotopography and paleobathymetry that has been “reconstructed” back in time. It can be used to produce detailed paleogeographic maps. The paleoDEMS describe the changing distribution of deep oceans, shallow seas, lowlands, and mountainous regions during the last 540 million years at five million year intervals. Each PaleoDEM is an estimate of the elevation of the land surface and depth of the ocean basins measured in meters (m) at a resolution of 1×1 degrees. 

This dataset requires the 'ncdf4' package to load. 

Access the digital elevation model variable ("dem") of the "paleomap" dataset with a `fetch()` function:

```{r}
 maps <- fetch("paleomap", "dem")

```



#### Resolution 

0.5

1.0

#### Archive size

paleomap_dem_20190719_0.5: 30.6 MB
paleomap_dem_20190719_1: 6.07 MB


#### Version

20190719

#### Licence

[CC-BY-NC-ND](https://creativecommons.org/licenses/by-nc-nd/2.0/)

### Plate Tectonic Reconstruction Model

The PALEOMAP PaleoAtlas for GPlates consists of 91 paleogeographic maps spanning the Phanerozoic and late Neoproterozoic. The PaleoAtlas can be directly loaded into GPlates as a Time Dependent Raster file. The paleogeographic maps in the PaleoAtlas illustrate the ancient configuration of the ocean basins and continents, as well as important topographic and bathymetric features such as mountains, lowlands, shallow sea, continental shelves, and deep oceans.

Access the plate tectonic reconstruction model variable ("model") of the "paleomap" dataset with a `fetch()` function:

```{r}
 maps <- fetch("paleomap", "model")

```

#### Resolution

none

#### Archive size

paleomap_model_v19o_r1c: 5.11 MB
paleomap_model_v3-GPlates: 5.11 MB

#### Versions

v3-GPlates

v19o_r1c 

#### Licence


[CC-BY-NC-ND](https://creativecommons.org/licenses/by-nc-nd/2.0/)

### PaleoAtlas paleorasters

The PALEOMAP PaleoAtlas for GPlates consists of 91 paleogeographic maps spanning the Phanerozoic and late Neoproterozoic. The PaleoAtlas can be directly loaded into GPlates as a Time Dependent Raster file. The paleogeographic maps in the PaleoAtlas illustrate the ancient configuration of the ocean basins and continents, as well as important topographic and bathymetric features such as mountains, lowlands, shallow sea, continental shelves, and deep oceans.

This dataset requires the 'ncdf4' package to load. 

Access the paleoatlas paleorasters variable ("paleoatlas") of the "paleomap" dataset with a `fetch()` function:

```{r}
 paleoras <- fetch("paleomap", "paleoatlas")

```

#### Resolution 

0.5

0.1

#### Archive size

paleomap_paleoatlas_20160216v3_0.5: 52.4 MB
paleomap_paleoatlas_20160216v3_0.1: 6.04 MB

#### Version

20160216v3

#### Licence


[CC-BY-NC-ND](https://creativecommons.org/licenses/by-nc-nd/2.0/)


### References

[www.scotese.com](URL: http://www.scotese.com//)

Scotese, C. R. Wright, N. (2018). PALEOMAP Paleodigital Elevation Models (PaleoDEMS) for the Phanerozoic.[www.earthbyte.org/paleodem-resource-scotese-and-wright-2018](URL: https://www.earthbyte.org/paleodem-resource-scotese-and-wright-2018/)

Scotese, C. R. (2016) Tutorial: PALEOMAP PaleoAtlas for GPlates and the PaleoData Plotter Program. [www.earthbyte.org/paleomap-paleoatlas-for-gplates](URL: https://www.earthbyte.org/paleomap-paleoatlas-for-gplates//)
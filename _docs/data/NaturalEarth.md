---
title: Natural Earth (NaturalEarth)
permalink: /docs/NaturalEarth/
---
Natural Earth is a public domain map dataset available at 1:10m, 1:50m, and 1:110 million scales. Featuring tightly integrated vector and raster data, with Natural Earth you can make a variety of visually pleasing, well-crafted maps with cartography or GIS software.


### Available variables 


[land - 10m land polygons including major islands](#land)

[minorislands - 10 m land polygons of minor islands](#minor-islands)

The dataset downloaded from [here](https://www.naturalearthdata.com/downloads/10m-physical-vectors/10m-land/).

### Land

10m land polygons including major islands.

This dataset requires the 'rgdal' package to load.

Access the land polygons variable ("land") of the "NaturalEarth" dataset with a `fetch()` function:

```{r}
 land <- fetch("NaturalEarth", "land")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

The argument `na` logical flag to trigger the removal of placeholder values - it also forces the dataset in the memory.

```{r}
land <- fetch(dat = "NaturalEarth", var = "land", dir, verbose=FALSE, na = TRUE)

```

#### Resolution 

10.0

#### Archive size

NaturalEarth_land_4-1-0_10:6.28 MB

#### Version

4-1-0

#### Licence

Public domain

### Minor islands

10 m land polygons of minor islands.

This dataset requires the 'rgdal' package to load.

Access the land polygons of minor islands variable ("minorislands") of the "NaturalEarth" dataset with a `fetch()` function:

```{r}
 minorislands <- fetch("NaturalEarth", "minorislands")

```

#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?


```{r}
minorislands <- fetch(dat = "NaturalEarth", var = "minorlands", dir, verbose=FALSE)

```

#### Resolution 

10.0

#### Archive size

NaturalEarth_minorislands_4-1-0_10: 864 KB

#### Version

4-1-0

#### Licence


Public domain

### Reference

Made with Natural Earth. Free vector and raster map data. 

[www.naturalearthdata.com](URL: https://naturalearthdata.com//)






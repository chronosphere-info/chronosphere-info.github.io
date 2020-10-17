---
title: Natural Earth
permalink: /docs/NaturalEarth/
---
Natural Earth is a public domain map dataset available at 1:10m, 1:50m, and 1:110 million scales. Featuring tightly integrated vector and raster data, with Natural Earth you can make a variety of visually pleasing, well-crafted maps with cartography or GIS software.


### Available variables 


[land - 10m land polygons including major islands](#land)

[minorislands - 10 m land polygons of minor islands](#minor-islands)

### Land

10m land polygons including major islands.

Access the land polygons variable ("land") of the "NaturalEarth" dataset with a `fetch()` function:

```{r}
 land <- fetch("NaturalEarth", "land")

```

#### Resolution 

10.0

#### Version

4-1-0

#### Licence

Public domain

### Minor islands

10 m land polygons of minor islands

Access the land polygons of minor islands variable ("minorislands") of the "NaturalEarth" dataset with a `fetch()` function:

```{r}
 minorislands <- fetch("NaturalEarth", "minorislands")

```

#### Resolution 

10.0

#### Version

4-1-0

#### Licence


Public domain

### Reference

Made with Natural Earth. Free vector and raster map data. 

[www.naturalearthdata.com](URL: https://naturalearthdata.com//)






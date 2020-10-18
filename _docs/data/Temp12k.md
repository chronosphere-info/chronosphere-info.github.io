---
title: Temperature 12k Database (Temp12k)
permalink: /docs/Temp12k/
---
A global compilation of quality-controlled, published, temperature-sensitive proxy records extending back 12,000 years through the Holocene.

### Available variables 

air - Air temperatures

The dataset downloaded from [here](https://doi.org/10.25921/4RY2-G808).

Access the air temperatures variable ("air") of the "Temp12k" dataset with a `fetch()` function:

```{r}
 temp <- fetch("Temp12k", "air")

```
#### Additional arguments

The argument `dir` represents the path to temporary directory. 

The argument `verbose` (logical) determines should feedback be output to the console?

```{r}
temp <- fetch(dat = "Temp12k", var = "air", dir, verbose=FALSE)

```

#### Resolution 

none

#### Archive size 

Temp12k_air_v1_0_0: 17.5 MB

#### Version

v1_0_0

#### Licence

[CC-BY](https://creativecommons.org/licenses/#:~:text=CC%20BY,most%20accommodating%20of%20licenses%20offered.)

### Reference

Kaufman, D., McKay, N., Routson, C., Erb, M., Davis, B., Heiri, O., Jaccard, S., Tierney, J., Daetwyler, C., Axford, Y., Brussel, T., Cartapanis, O., Chase, B., Dawson, A., de Vernal, A., Engels, S., Jonkers, L., Marsicek, J., Moffa-Sanchez, P., Zhilich, S. (2020). A global database of Holocene paleotemperature records. Scientific Data, 7(1), 115. [https://doi.org/10.1038/s41597-020-0445-3](https://doi.org/10.1038/s41597-020-0445-3)





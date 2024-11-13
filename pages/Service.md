---
layout: page
title: Service 
permalink: /model/service/
hero_image: "/images/backgrounds/lava.jpg"
---

# The current implementation 

<div class="columns">

<div class="column is-6"  markdown="1">

## Overview

This page includes some of the technical details that the current implementation of the chronosphere. Please note that the system is in its beta testing phase (publicly usable, but still unstable). 

Accordingly, many of the choices for back-end development are not final, and were selected for maximum cost-efficiency. The sheer number items to record requires flexibility from the data model. Although the major [structural entities]({{site.url}}/{{site.baseurl}}/model/datasets/) are now frozen, their attributes, related fields and entities will probably be extended.

Simply put, the chronosphere enhances data access by allowing users to replicate a recorded instantiation of a programming object on their computers.

</div>

<div class="column is-6"  markdown="1">

![]({{site.url}}/{{site.baseurl}}/images/chronosphere/data_service.svg)

</div>

</div>


## Relational Metadatabase

The current implementation of the chronosphere (v2.0) records the metadata about the incorportated data in an SQLite relational database. This medium-complexity database is present only as a back-end tool for organizing and collecting data and for producing structures that users interact with. [This website]({{site.url}}/{{site.baseurl}}) is also built using this relational database using static data files.


## Registry files 

Registry files are produced using this relational database. The registry files are made available on the internet, and they can be accessed with the chronosphere's [client (R package)](https://chronosphere.info/r_client/). These source- (`src`) specific files contain the information needed to access the publicly available *data files* and the necessary *code* to import these. 


## Data files

The chronosphere aims at providing access to data files that are published and archived on a scientific repository (have digital object identifiers, [DOI](https://www.doi.org/)s), examples of these include [Zenodo](https://zenodo.org/), [FigShare](), [OSF](), and [Pangea]()

## Code files

R code which Code 

## Known issues 






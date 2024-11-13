---
layout: page
title: chronosphere 
subtitle: Evolving Earth System Variables
callouts: landing_callout
hero_image: "/images/backgrounds/sand-beach-among-rocks-koh-lan-island-thailand-scaled.jpg"
show_sidebar: true
show_support: true
---

<style>
html{scroll-behavior:smooth}
</style>

<section class="section" markdown="1">

<div class="columns">

<div class="column is-12 secol"  markdown="1">

# About the chronosphere<sup>*</sup> project 

<i><sup>*</sup> from Χρόνος-σφαῖρα (gr.): time-orb </i>

Earth Systems are subject to continuous change. This universal nature is natively incorporated in the data we use to describe and analyze our Planet's history and its present state - as well as to predict its future. 
The modelled representation of these systems (including what can be quantified as data), however, do not only depend on physical (objective) time, but also on the state of our degree of understanding. Our knowledge of the Earth System changes constantly, precious resources of humanity are invested in observation, analysis and simulation of Earth System data. In other words, these continuously evolve, the data, our understanding and *in-silico* representation are all function of knowledge-time. 

You can find more about the project's aim and history [here]({{site.url}}{{site.baseurl}}/about/). 

<p style="float:right"><a href="#top">Scroll to top <i class="fas fa-arrow-up"></i></a></p>
</div>
</div>

</section>

* * *

<section class="section has-background-light" >

<div class="columns">

<div class="column is-8 secol"  markdown="1">

# Access Data Items

Much of today's discussion about data reuse revolve around proper practices to share information that we create - not about maximizing the utility of the already shared data.

We intend to facilitate programmatic analyses of large quantities of Earth System data. On a practical level, the **chronosphere** is a data organisation and distribution service that allows the immediate access to hundreds of well-defined, permanently-deposited data *items*, and the immediate instantiation of these in users' analytical workspace (currently in the R programming environment). By promoting [FAIR](https://www.go-fair.org/fair-principles/) principles and open science with the reuse of data and computer code, we intend to help with filling the interdisciplinary gaps between geoscience disciplines.

This service depends on a metadata- and codebase, that links data files with code items, that are accessed remotely making the code built with them robust and extremely portable. The data distribution framework is organized around two levels of primary entities: exact data *items*, data *products*. Check out our [dataset data model]({{site.url}}{{site.baseurl}}/model/datasets/) if you are interested in learning more about these!

<a href="{{site.url}}{{site.baseurl}}/r_client/#example"><button class="button is-primary" > Give it a shot! - access data with the chronosphere R package!</button></a>

</div>
<div class="column is-4">

{% assign row = site.data.counts[0] %}
<br>
<br>
<table>
  <tr><th>Number of <i>Items</i></th> <td> {{row.items}} </td></tr>
  <tr><th>Number of <i>Products</i></th> <td>{{row.products}}</td></tr>
  <tr><th>Number of <i>Series</i></th> <td>{{row.series}}</td></tr>
  <tr><th>Number of <i>Sources</i></th> <td>{{row.sources}}</td></tr>
</table>
<br>
<div class="columns">
<div class="column is-6">
<a href="https://www.r-project.org/"><img src="{{site.url}}{{site.baseurl}}/images/logos/RlogoNew.png"></a>
</div>
<div class="column is-6">
<a href="https://chronosphere.info/r_client/"><img src="{{site.url}}{{site.baseurl}}/images/logos/chronosphere_rhex_500.png"></a>
</div>
</div>

</div>



</div>

<p style="float:right"><a href="#top">Scroll to top <i class="fas fa-arrow-up"></i></a></p>

</section>

* * *

<section class="section" markdown="1">

# Tracing Data Evolution

The **chronosphere** is developed with the aim of tracing of the evolution of Earth System Variables through knowledge time. This long-term goal can only be met with enhanced reproducibility, and most importantly, with the robust replicability of results from Earth System research. 

Besides the practicality of data distribution. The chronosphere is dedicated to the registration of data updates, and aims at

These features should allow the development of a dynamic codebase that expresses our knowledge of planet Earth, making the assessment of a desired aspect of our planet availble on demand with the most up-to-date, customizable information.

<p style="float:right"><a href="#top">Scroll to top <i class="fas fa-arrow-up"></i></a></p>

</section>

* * *

<section class="section has-background-light" style="text-align:justify" markdown="1">
# Formal variables 

On a higher level, the chronosphere describes a standard model that tabulates descriptors of the Earth System.
These descriptors, are the abstract variables that allow us to structure our knowledge about the planets major regimes. These include output varisbles of global climate, geological and macroecological nature, such as near surface air temperature, Sr isotopic composition of seawater and global taxonomic diversity.
 
Besides being abstract, they are also numerous: humans have developed thousands, potentially hundreds of thousands of aspecpects, from which we can analyze and asses our planet.
 
Technically these are functions that render information of some structure (the range), to other information (the domain).
- what formal varisbles exist
- what is their definition domin and range
- how they translate to other systems
-how different data series are related 
- what are the variables proxies of



<p style="float:right"><a href="#top">Scroll to top <i class="fas fa-arrow-up"></i></a></p>

</section>


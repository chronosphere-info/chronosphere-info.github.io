---
title: "Neptune Sandbox Berlin"
permalink: /data/neptune/
layout: page
src: neptune
series: 
- code: sqlite
  name: Relational Database (sqlite)
- code: occs
  name: Denormalized occurrence table
- code: filtered
  name: Filtered denormalized occurrence table
- code: agemodels
  name: Denormalized age models table

description: placeholder_paleomap_descr.file
sourceURL: 
sourceShort: Neptune
logo: neptune.png
defaultSeries: sqlite
---

<script src="{{site.url}}{{site.baseurl}}/assets/js/jquery-3.7.0.js"></script>  <!--Add JQuery-->
<script src="{{site.url}}{{site.baseurl}}/assets/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="{{site.url}}{{site.baseurl}}/assets/css/jquery.dataTables.min.css" />

<div class="columns">
<div class="column is-8" markdown="1">

## {{page.title}}

* * * 

{{ page.description }}



</div>

<div class="column is-4 box" style="text-align:center">
<img src="{{site.url}}{{site.baseurl}}/images/chronos_logos/{{page.logo}}" style="max-width:250px">

<table style="text-align: left">
<tr><th>src:</th><th><code>{{page.src }}</code></th></tr>
<tr><td>URL:</td><td style="overflow-wrap:break-word" ><a href="{{page.sourceURL }}">{{page.sourceURL }}</a></td></tr>
<tr><td>Default series:</td><td><code>{{page.defaultSeries }}</code></td></tr>

</table>
</div>
</div>

## Available data series

<table class="display" id="my-table">

<thead>
<tr><th>Series code </th> <th>Series name </th><th>Default class(es)</th></tr>

</thead>
<tbody>
{% for i in page.series %}

{% if i.code == page.defaultSeries %}
<tr style="background-color:#eee">
{% else %}
<tr>
{% endif %}

<td>
<code>{{ i.code }}</code>
</td>

<td>
{% if i.code == page.defaultSeries %}
<strong><a href="{{site.url}}{{site.basurl}}/data/neptune/{{i.code}}/">{{i.name }}</a></strong> <i>(default)</i>
{% else %}
<a href="{{site.url}}{{site.basurl}}/data/neptune/{{i.code}}/">{{i.name }}</a>
{% endif %}
</td>

<td>
</td>

</tr>
{% endfor %}

</tbody>
</table>

<script>
new DataTable('#my-table');
</script>

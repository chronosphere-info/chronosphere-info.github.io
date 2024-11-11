---
title: "Foraminifera Response to Climatic Stress"
permalink: /data/forcis/
layout: page
src: forcis
series: 
- code: trap
  name: Trap
- code: pump
  name: Pump
- code: net
  name: Net
- code: cpr_north
  name: CPR North
- code: cpr_south
  name: CPR South

description: he FORCIS (Foraminifera Response to Climatic Stress) database is a synthesis grouping datasets on living planktonic foraminifera. We assembled foraminiferal diversity and distribution data in the global oceans from 1910 until 2018, curating published and unpublished datasets. This database includes data collected using plankton tows, continuous plankton recorder, sediment traps and plankton pump from the global ocean.
sourceURL: https://forcis.cerege.fr/
sourceShort: FORCIS
logo: 
defaultSeries: trap
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
<strong><a href="{{site.url}}{{site.basurl}}/data/forcis/{{i.code}}/">{{i.name }}</a></strong> <i>(default)</i>
{% else %}
<a href="{{site.url}}{{site.basurl}}/data/forcis/{{i.code}}/">{{i.name }}</a>
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

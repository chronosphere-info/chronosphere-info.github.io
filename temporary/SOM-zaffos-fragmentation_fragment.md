---
title: "The continent fragmentation results of Zaffos et al. 2017"
sourceName: "The continent fragmentation results of Zaffos et al. 2017"
permalink: /data/SOM-zaffos-fragmentation/fragment/
layout: page
src: SOM-zaffos-fragmentation
seriesName: "Continent fragmentation index"
ser: fragment
api: 
logo: "null"
description: dummyfile
products:
- version: '20170424'
  res: 1my
  date: '2017-04-24'
  license: Unspecified
  class: 'R: data.frame'

languages:
- 'null'
- R

---

<script src="{{site.url}}{{site.baseurl}}/assets/js/tabs.js"></script>
<script src="{{site.url}}{{site.baseurl}}/assets/js/clipboard.min.js"></script>


<script src="{{site.url}}{{site.baseurl}}/assets/js/jquery-3.7.0.js"></script>  <!--Add JQuery-->
<script src="{{site.url}}{{site.baseurl}}/assets/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="{{site.url}}{{site.baseurl}}/assets/css/jquery.dataTables.min.css" />

<div class="columns">
<div class="column is-8" markdown="1">

#  {{page.seriesName}} 

<small style="color:gray"><i> - Data series from <a href="{{site.url}}{{site.baseurl}}/data/{{page.src}}/">{{page.sourceName}}</a></i></small> 

<hr>


{{page.description}}

{% if page.api %}
<div style="overflow-wrap:break-word" markdown="1">

##### API link 

<code>{{page.api}}</code>

</div>
{% endif %}

### Default data product

<div class="tabs is-boxed">
  <ul>
{% if page.languages contains "R" %}
    <li class="tab is-active" onclick="openTab(event,'r-default')"><a><img src="{{site.url}}{{site.baseurl}}/images/logos/RlogoNew.png" style="width:30px"></a></li>
{% endif %}
{% if page.languages contains "Python" %}
    <li class="tab" onclick="openTab(event,'py-default')"><a><img src="{{site.url}}{{site.baseurl}}/images/logos/Python-logo-notext.png" style="width:30px"></a></li>
{% endif %}
  </ul>
</div>

<div class="container section">

{% if page.languages contains "R" %}
<div class="content-tab" id="r-default" markdown="1">
Download the data objects with:
```R
object <- chronosphere::fetch(src="{{page.src}}", ser="{{page.ser}}")
```
</div>
{% endif %}
<div class="content-tab" id="py-default" style="display:none" markdown="1">
```python
Python code!
```
</div>
</div>



</div>

<div class="column is-4 box" markdown="1" style="text-align:center">

{% if page.logo != "null" %}

{% else %}
<img src="{{site.url}}{{site.baseurl}}/images/chronos_logos/generic.svg" style="max-width:200px">
{% endif %}

##### Coordinates

<table>
<tr> <td> src </td> <td><code>{{page.src}}</code> </td></tr>
<tr> <td> ser </td> <td><code>{{page.ser}}</code> </td></tr>
</table>

##### Defaults

</div>


</div>

<br>

# Available products

* * *


<table class="display" id="my-table">
<thead>
<tr><th>Version</th><th>Resolution</th> <th>Date</th> <th>Fetch!</th></tr>
</thead>

<tbody>

{% assign prods = page.products | sort: "date" %}
{% for i in prods %}

<tr> 
{% if i.res == "null"%}

{% capture fetchCall %}chronosphere::fetch(src = "{{page.src}}", ser = "{{page.ser}}", ver = "{{i.version}}"){% endcapture %}

{% assign resVal = "-"%} 

{% else %}

{% capture fetchCall %}chronosphere::fetch(src = "{{page.src}}", ser = "{{page.ser}}", ver = "{{i.version}}", res = "{{i.res}}"){% endcapture %}

{% assign resVal = i.res %} 

{% endif %}

{% assign fetchCall = fetchCall | replace: '"', '\"' %} 

<td> <code>"{{i.version}}"</code></td>
<td> <code>{{resVal}}</code> </td>
<td> {{i.date}} </td>
<td> 
	<button class="button is-small" onclick='myFunction("{{fetchCall}}")' style="font-size:0.5rem">
		<img src="{{site.url}}{{site.baseurl}}/images/misc/copy-to-clipboard_R.svg" style="width:20px"> 
	</button> 
</td>
</tr>

{% endfor %}

</tbody>
</table>


<script>
new DataTable('#my-table');
</script>

<script>
function myFunction(message) {
   // Copy the text inside the text field
  navigator.clipboard.writeText(message);
} 
</script>

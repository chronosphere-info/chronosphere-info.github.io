---
layout: page
title: Available data 
menubar: data_categ
permalink: /data/
hero_image: "/images/backgrounds/ice.jpg"
---

<div class="notification is-warning is-light" markdown="1">
Here you can find the automatically prepared pages the included data sources, series and items, which will be documented on this website. This feature functions but it is **still under intense development**, and will include lots of placeholder values. Yu can use the R package's `datasets()` function to access available data items.
</div>

{% assign sources = site.data.sources | sort: "name" %} 

{% for i in sources %}

# {{i.name}}

* * * 

{% assign current = i.content | sort: "src" %} 

{% for sr in current %}


<div class="box">
<a href="{{site.url}}{{site.baseurl}}/data/{{sr.src}}/">
<div class="columns">
<div class="column is-4" markdown="1">
`{{sr.src}}`
</div>
<div class="column" markdown="1">
{{sr.sourceName}}
</div>
</div>
</a>
</div>

{% endfor %}

<br>

{% endfor %}


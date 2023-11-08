---
layout: page
title: Available data 
menubar: data_categ
permalink: /data/
hero_image: "/images/backgrounds/ice.jpg"
---

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


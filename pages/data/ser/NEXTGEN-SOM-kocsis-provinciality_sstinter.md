---
title: "Code, used data and supplementary items for the articled Increase in marine provinciality over the last 250 million years governed more by climate change than plate tectonics"
sourceName: "Code, used data and supplementary items for the articled Increase in marine provinciality over the last 250 million years governed more by climate change than plate tectonics"
permalink: /data/SOM-kocsis-provinciality/sstinter2/
layout: page
src: SOM-kocsis-provinciality
seriesName: "S6. Interpolated  temperature  reconstructions  based  on  the  HadCM3L  climate  models  and  the PaleoMAP Paleocoastlines"
ser: sstinter
api: null
logo: "null"
description: null
products:
- version: v1.0
  res: '1'
  date: '2021-07-25'
  license: CC BY 4.0
  class: 'R: RasterArray'

languages:
- 'null'
- R
- Python

---

<script src="{{site.url}}{{site.baseurl}}/assets/js/tabs.js"></script>
<script src="{{site.url}}{{site.baseurl}}/assets/js/clipboard.min.js"></script>


<script src="{{site.url}}{{site.baseurl}}/assets/js/jquery-3.7.0.js"></script>  <!--Add JQuery-->
<script src="{{site.url}}{{site.baseurl}}/assets/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="{{site.url}}{{site.baseurl}}/assets/css/jquery.dataTables.min.css" />


<link rel="stylesheet" type="text/css" href="{{site.url}}{{site.baseurl}}/assets/css/highlight.default.min.css" />
<script src="{{site.url}}{{site.baseurl}}/assets/js/highlight.min.js"></script>  <!--R syntax hightlight-->
<script src="{{site.url}}{{site.baseurl}}/assets/js/r.min.js"></script>  <!--R syntax hightlight-->


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


### References 

</div>

<div class="column is-4 box" markdown="1" style="text-align:center">

{% if page.logo != "null" %}
<img src="{{site.url}}{{site.baseurl}}/images/chronos_logos/{{page.logo}}" style="max-width:250px">
{% else %}
<img src="{{site.url}}{{site.baseurl}}/images/chronos_logos/generic.svg" style="max-width:200px">
{% endif %}

##### Coordinates

<table>
<tr> <td> src </td> <td><code>{{page.src}}</code> </td></tr>
<tr> <td> ser </td> <td><code>{{page.ser}}</code> </td></tr>
</table>

</div>


</div>

<br>


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

<div class="container">

{% if page.languages contains "R" %}
<div class="content-tab" id="r-default" markdown="1">


<div class="box R-item">

<h5>Download the data objects with: </h5>

<div id ="RdefaultBlock"> </div>

</div>


<script>
function displayDefaultR(src,ser){
	fetchCall = 'x <- chronosphere::fetch(src = "' + src + '", ser = "' + ser + '")'
	codeBlock = '<pre>' +
		'<code id="r-defaultFetch">' +
			hljs.highlight(fetchCall, {language: "r"}).value + 
		'</code>' + 
			'<button class="button is-small copybutton" onclick="myFunction2(\'r-defaultFetch\')" style="margin-top: -5px;">' + 
				'<i class="fa fa-copy"></i>' +
			'</button>' +
		'</pre>';
	return(codeBlock);
}
document.getElementById("RdefaultBlock").innerHTML = displayDefaultR('{{page.src}}','{{page.ser}}');
</script>


</div>
{% endif %}
<div class="content-tab" id="py-default" style="display:none" markdown="1">
```
Python code!
```
</div>
</div>

# Available products

* * *


<script>
function myFunction2(id) {
   // Copy the text inside the text field
  navigator.clipboard.writeText(document.getElementById(id).textContent);
} 
</script>


<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th></th>
                <th>Version</th>
                <th>Resolution</th>
                <th>Date</th>
                <th><img src="{{site.url}}{{site.baseurl}}/images/logos/RlogoNew.png" style="width:20px"> class</th>
            </tr>
        </thead>
    </table>
	
	
<script>
// use a global counter to find which code block's text needs to be copied to the clipboard!
var globCounter = 0;
function format(d) {
	let result = '';
	// For every item
	for(let i = 0; i < d.items.length; i ++){
		// create in icon for the programming language
		if( d.items[i].language == "R"){
		  var icon = '<img src="{{site.url}}{{site.baseurl}}/images/logos/RlogoNew.png" style="width:30px;margin-right:5px">';
		  var boxclass = 'R-item';
		}
		if( d.items[i].language == "Python"){
		  var icon = '<img src="{{site.url}}{{site.baseurl}}/images/logos/Python-logo-notext.png" style="width:30px;margin-right:5px">';
		  var boxclass = 'py-item';
		}
		//add a horizontal rule at the beginning
		if(i > 0) result += '';
		var fetchCall = 'x <- chronosphere::fetch(src=\"{{page.src}}\", ser=\"{{page.ser}}\", ver=\"' + d.ver +'\", res=\"' + d.res 
		+ '\", class=\"' + d.items[i].class + '\")';
		globCounter++;
		result += '<div class="box ' + boxclass + '"><h5>' + icon +'<span style="font-weight:200">class:</span> '+ d.items[i].class + ' </h5>' +
			'<dl>' +
			'<dt>Fetch call:</dt>' + 
			'<dd><pre><code id="codeBlock' + globCounter + '">' + 
			hljs.highlight(fetchCall, {language: "r"}).value + 
			'</code><button class="button is-small copybutton" onclick="myFunction2(\'codeBlock' + globCounter + '\')" ><i class="fa fa-copy"></i></button>' +
			'</pre></dd>' +
			'<dt>Dependencies:</dt><dd>';
		// iterate for all dependencies
		for(let j = 0; j < d.items[i].dependencies.length; j++){
			result += '<a href="' + d.items[i].dependencies[j].url+ '">' + d.items[i].dependencies[j].software + '</a>' + ' (' + d.items[i].dependencies[j].version + '), ';
		}
		result += '</dd></dl></div>';
	}
    return (
		result
    );
}
 
let table = new DataTable('#example', {
    ajax: '{{site.url}}{{site.baseurl}}/assets/json/{{page.src}}/{{page.ser}}.json',
    columns: [
        {
            className: 'dt-control',
            orderable: false,
            data: null,
            defaultContent: ''
        },
        { data: 'ver' },
        { data: 'res' },
        { data: 'productDate'},
        { data: 'R'}
    ],
    order: [[3, 'desc']]
});
 
table.on('click', 'td.dt-control', function (e) {
    let tr = e.target.closest('tr');
    let row = table.row(tr);
 
    if (row.child.isShown()) {
        // This row is already open - close it
        row.child.hide();
    }
    else {
		// close all rows
		table.rows().every(function(){
            // If row has details expanded
            if(this.child.isShown()){
                // Collapse row details
                this.child.hide();
                $(this.node()).removeClass('shown');
            }
        });
        // Open this row
        row.child(format(row.data())).show();
    }
});

</script>

<style>
button.button.is-small.copybutton{
  float: right;
  margin-top: -12px;
  margin-bottom: -12px;
  font-size: 0.75rem;
}
div.box.R-item{
background: linear-gradient(170deg, rgba(255,255,255,1) 0%, rgba(38,108,194,0.2) 100%);
}

div.box.py-item{
background: linear-gradient(170deg, rgba(255,218,77,0.2) 0%, rgba(255,255,255,1) 55%, rgba(75,140,191,0.2) 100%);
}

pre{
background-color:#ffffff88;
}

</style>

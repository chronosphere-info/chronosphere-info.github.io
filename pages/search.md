---
layout: page
title: Search results 
permalink: /search/
---

{% include search-lunr.html %}

<script>
  function getQueryVariable(variable) {
    var query = window.location.search.substring(1),
      vars = query.split("&");

    for (var i = 0; i < vars.length; i++) {
      var pair = vars[i].split("=");

      if (pair[0] === variable) {
        return decodeURIComponent(pair[1].replace(/\+/g, '%20')).trim();
      }
    }
  }

  var query = decodeURIComponent((getQueryVariable("q") || "").replace(/\+/g, "%20"));
  lunr_search(query);
</script>

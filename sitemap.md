---
title: Sitemap
sitemap_exclude: true
---

<ul>
{% for item in site.pages %}
{% unless item.sitemap_exclude %}
  <li><a href="{{ item.url }}">{{ item.title }}</a></li>
{% endunless %}
{% endfor %}
</ul>


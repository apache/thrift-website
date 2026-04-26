---
title: Libraries
header: true
---

## Source Tree

Each supported language needs the Apache Thrift Libraries and the generated code made by the Apache Thrift Compiler.

Some language specific documentation is for the Apache Thrift Libraries are generated from lib/${language}/README.md files:

<ul>
{% for item in site.pages %}
{% if item.islib %}
  <li><a href="{{item.url}}">{{item.title}}</a></li>
{% endif %}
{% endfor %}
</ul>

## Package manager information and references

<!-- place table outside filter/endfilter -->

<table class="table">
  <thead>
    <tr>
      <th>Language Bindings</th>
      <th>Package Manager</th>
      <th>Direct link (URL)</th>
      <th>Control file in source tree</th>
      <th>Remarks</th>
  </tr>
</thead>
  <tbody>
  {% for item in site.data.external_packages %}
  <tr class="">
      <td class="language">{{ item[0] }}</td>
      <td class="packman">{{ item[1] }}</td>
      <td class="packurl"><a href="{{ item[2] }}">{{ item[2] }}</a></td>
      <td class="ctrlfile">{{ item[3] }}</td>
      <td class="remarks">{{ item[5] }}</td>
  </tr>
  {% endfor %}
  </tbody>
</table>

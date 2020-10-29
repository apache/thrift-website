---
title: Library
---

# Apache Thrift Libraries

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
<div class="packages">
    <table class="table table-bordered table-striped">
        <tbody>
        <tr>
            <td><b>Language Bindings</b></td>
            <td><b>Package Manager</b></td>
            <td><b>Direct link (URL)</b></td>
            <td><b>Control file in source tree</b></td>
            <td><b>Maintainer</b></td>
            <td><b>Remarks</b></td>
        </tr>
        {% for item in site.data.external_packages %}
        <tr class="">
            <td class="language">{{ item[0] }}</td>
            <td class="packman">{{ item[1] }}</td>
            <td class="packurl"><a href="{{ item[2] }}">{{ item[2] }}</a></td>
            <td class="ctrlfile">{{ item[3] }}</td>
            <td class="maintainer">{{ item[4] }}</td>
            <td class="remarks">{{ item[5] }}</td>
        </tr>
        {% endfor %}
        </tbody>
    </table>
</div>


---
title: "About"
---

Apache Thrift is a software project spanning a variety of programming languages and use cases. Our goal is to make reliable, performant communication and data serialization across languages as efficient and seamless as possible. Originally developed at Facebook, Thrift was open sourced in April 2007 and entered the Apache Incubator in May, 2008. Thrift became an Apache TLP in October, 2010.

Apache Thrift aims to embody the following values

<div class="flex gap flex-col md:flex-row py-md wrap">
  <div class="block flex-1 download-card">
    <h3>Simplicity</h3>
    <p>Thrift code is clean and accessible, avoiding bloat and superfluous dependencies.</p>
  </div>

  <div class="block flex-1 download-card">
    <h3>Transparency</h3>
    <p>Thrift follows the most natural idioms and conventions across all supported languages.</p>
  </div>

  <div class="block flex-1 download-card">
    <h3>Consistency</h3>
    <p>Language-specific quirks belong in extensions, keeping the core library predictable.</p>
  </div>

  <div class="block flex-1 download-card">
    <h3>Performance</h3>
    <p>Optimize for speed first; let elegance follow from necessity, not preference.</p>
  </div>

</div>

## Maintainers and advisors

<div class="flex gap">
  <div class="flex-1">
    <h3>Champion</h3>
    <p>Doug Cutting</p>
  </div>

  <div class="flex-1">
    <h3>Mentors</h3>
    <p>Paul Querna</p>
    <p>Upayavira</p>
    <p>Jason van Zyl</p>
  </div>
</div>

## Project maintainers

<table class="table">
  <thead>
  <tr>
    <th>Apache ID</th>
    <th>Full Name</th>
    <th>Specialities</th>
    <th>Timezone</th>
  </tr>
  </thead>
  <tbody>
  {% for item in site.data.committers %}
  <tr>
    <td class="username"><a href="https://people.apache.org/phonebook.html?uid={{ item[0] }}">{{ item[0] }}</a></td>
    <td class="fullname">{{ item[1] }}</td>
    <td>{{ item[2] }}</td>
    <td align="right">{{ item[3] }}</td>
  </tr>
  {% endfor %}
  </tbody>
</table>

## Powered by Apache Thrift

The following companies are known to employ Apache Thrift in their production services.

<table class="table">
    <thead>
    <tr>
        <th>Company</th>
        <th>Website</th>
    </tr>
    </thead>
    <tbody>
    {% for item in site.data.powered_by %}
    <tr>
        <td class="company">{{ item[0] }}</td>
        <td class="website"><a href="{{ item[1] }}">{{ item[1] }}</a></td>
    </tr>
    {% endfor %}
    </tbody>
</table>

## Open source projects using Apache Thrift

Apache Thrift is widely used in lots of other Open Source projects. These are some of them, but the list is by no means exhaustive.

<table class="table">
    <thead>
    <tr>
        <th>Project</th>
        <th>Website</th>
    </tr>
    </thead>
    <tbody>
    {% for item in site.data.oss_projects %}
    <tr>
        <td class="company">{{ item[0] }}</td>
        <td class="website"><a href="{{ item[1] }}">{{ item[1] }}</a></td>
    </tr>
    {% endfor %}
    </tbody>
</table>

## Other Apache projects using Apache Thrift

There's also plenty of other Apache projects who are using and/or supporting Thrift in some way or another.

<table class="table">
    <thead>
    <tr>
        <th>Project</th>
        <th>Website</th>
    </tr>
    </thead>
    <tbody>
    {% for item in site.data.apache_projects %}
    <tr>
        <td class="company">{{ item[0] }}</td>
        <td class="website"><a href="{{ item[1] }}">{{ item[1] }}</a></td>
    </tr>
    {% endfor %}
    </tbody>
</table>

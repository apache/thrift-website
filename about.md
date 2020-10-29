---
title: "About"
---

Apache Thrift is a software project spanning a variety of programming languages and use cases. Our goal is to make reliable, performant communication and data serialization across languages as efficient and seamless as possible. Originally developed at Facebook, Thrift was open sourced in April 2007 and entered the Apache Incubator in May, 2008. Thrift became an Apache TLP in October, 2010.

Apache Thrift aims to embody the following values:

* **Simplicity**
  Thrift code is simple and approachable, free of unnecessary dependencies.

* **Transparency**
  Thrift conforms to the most common idioms in all languages.

* **Consistency**
  Niche, language-specific features belong in extensions, not the core library.

* **Performance**
  Strive for performance first, elegance second.

----

Project Team
------------

### Committers

<div class="committers">
  <table class="table table-bordered table-striped">
    <tbody>
    <tr>
      <td><b>Apache ID</b></td>
      <td><b>Full Name</b></td>
      <td><b>Specialities</b></td>
      <td><b>Timezone</b></td>
    </tr>
    {% for item in site.data.committers %}
    <tr class="">
      <td class="username">{{ item[0] }}</td>
      <td class="fullname">{{ item[1] }}</td>
      <td>{{ item[2] }}</td>
      <td align="right">{{ item[3] }}</td>
    </tr>
    {% endfor %}
    </tbody>
  </table>
</div>

### Champion
* Doug Cutting

### Mentors
* Paul Querna
* Upayavira
* Jason van Zyl

---

Powered by Apache Thrift
-----------------
The following companies are known to employ Apache Thrift in their production services.

<div class="committers">
    <table class="table table-bordered table-striped">
        <tbody>
        <tr>
            <td><b>Company</b></td>
            <td><b>Website</b></td>
        </tr>
        {% for item in site.data.powered_by %}
        <tr class="">
            <td class="company">{{ item[0] }}</td>
            <td class="website"><a href="{{ item[1] }}">{{ item[1] }}</a></td>
        </tr>
        {% endfor %}
        </tbody>
    </table>
</div>

Open source projects using Apache Thrift
-----------------
Apache Thrift is widely used in lots of other Open Source projects. These are some of them, but the list is by no means exhaustive.

<div class="committers">
    <table class="table table-bordered table-striped">
        <tbody>
        <tr>
            <td><b>Project</b></td>
            <td><b>Website</b></td>
        </tr>
        {% for item in site.data.oss_projects %}
        <tr class="">
            <td class="company">{{ item[0] }}</td>
            <td class="website"><a href="{{ item[1] }}">{{ item[1] }}</a></td>
        </tr>
        {% endfor %}
        </tbody>
    </table>
</div>

Other Apache projects using Apache Thrift
-----------------
There's also plenty of other Apache projects who are using and/or supporting Thrift in some way or another.

<div class="committers">
    <table class="table table-bordered table-striped">
        <tbody>
        <tr>
            <td><b>Project</b></td>
            <td><b>Website</b></td>
        </tr>
        {% for item in site.data.apache_projects %}
        <tr class="">
            <td class="company">{{ item[0] }}</td>
            <td class="website"><a href="{{ item[1] }}">{{ item[1] }}</a></td>
        </tr>
        {% endfor %}
        </tbody>
    </table>
</div>


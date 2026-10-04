---
title: Documentation
---

## Documentation Topics

Each supported language needs the Apache Thrift Libraries and the generated code made by the Apache Thrift Compiler.

Some language specific documentation is for the Apache Thrift Libraries are generated from lib/${language}/README.md files:

<ul>
{% for item in site.pages %}
{% if item.isdoc %}
  <li><a href="{{item.url}}">{{item.title}}</a></li>
{% endif %}
{% endfor %}
</ul>

## Other resources

For a quick introduction that covers a lot of Thrift knowledge on just one page, we recommended
Diwaker Gupta's [Thrift: The Missing Guide](https://diwakergupta.github.io/thrift-missing-guide).

If you want to do a real deep dive into the various language bindings, consider Randy Abernethy's
[The Programmer's Guide to Apache Thrift](https://www.manning.com/books/programmers-guide-to-apache-thrift).
The book comes with a lot of inside knowlegde and is packed with practical examples.

Curious how Thrift messages look byte by byte? Check out [Thrift Illustrated](https://thrift.dmytro.sh) - a great way to explore every detail.

Working with Thrift in VS Code? [Weaver for Apache Thrift](https://marketplace.visualstudio.com/items?itemName=kpumuk.thrift-weaver-vscode) brings linting, formatting, and language intelligence right into your editor.

---
title: "Graphviz"
library_lang: "cpp"
---
{% include 'tutorial_intro.md' %}

### Prerequisites
* A Graphviz renderer

	The [official renderers](http://www.graphviz.org) can be used as a command line tool to produce a graphic from the '.gv' file

### Overview

The Graphviz generator is a convenient way to generate documentation diagrams
for your API. Usage:

    $ thrift -r --gen gv tutorial.thrift

This will create the file `gen-gv/tutorial.gv`, which is a [Graphviz
source](http://en.wikipedia.org/wiki/DOT_(graph_description_language)) - a
plain-text description language used for graphs (in this case, for IDL's types
and functions diagram). You will need to actually render those graphs into any
of the supported output formats (e.g. PNG, PDFs, SVG, etc.) by using a Graphiz
renderer in your platform.

	$ dot -Tpdf -otutorial.pdf gen-gv/tutorial.gv

## Extra options

By default, the diagrams are not rendered with arrows from functions to
exceptions (although the exception structures are displayed). You can set the
generator to render those exceptions arrows (i.e. function throws) by using the
"`exception`" option:

    $ thrift -r --gen:gv:exceptions gv tutorial.thrift

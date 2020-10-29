---
title: "Index of tutorial/"
---

## Apache Thrift Tutorial

* ### Download Apache Thrift
To get started, [download](/download) a copy of Thrift.

* ### Build and Install the Apache Thrift compiler and libraries
You will then need to build the Apache Thrift compiler and libraries.

    ./configure && make

This will also compile the tutorial client and server for several languages.
See the [Building from source](/docs/BuildingFromSource) guide for any help with this step.

* ### Writing a .thrift file
After the Thrift compiler is installed you will need to create a .thrift file. This file is an [interface definition](/docs/idl) made up of [thrift types](/docs/types) and Services. The services you define in this file are implemented by the server and are called by any clients.

* ### Generate Thrift file to source code
The Thrift compiler is used to generate your Thrift file into source code which is used by the different client libraries and the server you write. To generate the source from a Thrift file run

    thrift --gen <language> <Thrift filename>

To recursivly generate source code from a Thrift file and all other Thrift files included by it, run

    thrift -r --gen <language> <Thrift filename>

The sample [tutorial.thrift](https://git-wip-us.apache.org/repos/asf?p=thrift.git;a=blob_plain;f=tutorial/tutorial.thrift)
file defines a basic calculator service. This sample calculator service .thrift file includes another file called
[shared.thrift](https://git-wip-us.apache.org/repos/asf?p=thrift.git;a=blob_plain;f=tutorial/shared.thrift).
Both files will be used to demonstrate how to build a Thrift client and server pair.

## Examples Clients and Servers

<ul>
{% for item in site.pages %}
{% if item.tutorial %}
  <li><a href="{{item.url}}">{{item.title}}</a></li>
{% endif %}
{% endfor %}
</ul>


---
title: "Getting started"
isdoc: true
---

## Apache Thrift Quick Start

#### Download Apache Thrift

To get started, [download](/download) a copy of Thrift.

#### Build and Install the Apache Thrift compiler

You will then need to [build](/docs/BuildingFromSource) the Apache Thrift compiler and install it. See the [installing Thrift](/docs/install) guide for any help with this step.

#### Writing a .thrift file

After the Thrift compiler is installed you will need to create a thrift file. This file is an [interface definition](/docs/idl) made up of [thrift types](/docs/types) and Services. The services you define in this file are implemented by the server and are called by any clients. The Thrift compiler is used to generate your Thrift File into source code which is used by the different client libraries and the server you write. To generate the source from a thrift file run

```sh
thrift --gen <language> <Thrift filename>
```

The sample `tutorial.thrift` file used for all the client and server tutorials can be found [here](https://github.com/apache/thrift/tree/master/tutorial).

## Example

Apache Thrift allows you to define data types and service interfaces in a simple definition file. Taking that file as input, the compiler generates code to be used to easily build RPC clients and servers that communicate seamlessly across programming languages. Instead of writing a load of boilerplate code to serialize and transport your objects and invoke remote methods, you can get right down to business.

The following example is a simple service to store user objects for a web front end.

<div class="tabbable">
  <ul class="nav nav-tabs">
    <li class="active"><a href="#1" data-toggle="tab">Thrift Definition File</a></li>
    <li><a href="#2" data-toggle="tab">Python Client</a></li>
    <li><a href="#3" data-toggle="tab">Java Server</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="1">
      {% remote_snippet tutorial/tutorial.thrift thrift 123,150 %}
    </div>
    <div class="tab-pane" id="2">
      {% remote_snippet tutorial/py/PythonClient.py py 35,55 %}
    </div>
    <div class="tab-pane" id="3">
    Initialize the Server:
      {% remote_snippet tutorial/java/src/JavaServer.java java 64,76 %}

    The CalculatorHandler:
      {% remote_snippet tutorial/java/src/CalculatorHandler.java java 27,91 %}
    </div>

  </div>
</div>

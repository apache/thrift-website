---
title: Home
---

<div class="row">
  <div>
    <div class="flex gap flex-col md:flex-row mb-lg" >
    <div>
      <p>The Apache Thrift is a lightweight, language-independent software stack for point-to-point RPC implementation. Thrift provides clean abstractions and implementations for data transport, data serialization, and application level processing. The code generation system takes a simple definition language as input and generates code across programming languages that uses the abstracted stack to build interoperable RPC clients and servers.</p>
        <p>Thrift makes it easy for programs written in different programming languages to share data and call remote procedures. With support for many programming languages, chances are Thrift supports the languages that you currently use. Thrift is specifically designed to support non-atomic version changes across client and server code. This allows you to upgrade your server while still being able to service older clients; or have newer clients issue requests to older servers.</p>
    </div>
    <div class="well center flex-1">
      <h2>Download</h2>
      <p>Apache Thrift v{{ site.current_release }}</p>
      <p>
        <a class="btn btn-large" href="{{ site.mirror_url }}/thrift/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz">
            Download <small>v{{ site.current_release }}</small>
        </a>
      </p>
      <p>
        <small>
        <a href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz.sha256">SHA256</a>
        </small>
        |
        <small>
        <a href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz.sha1">SHA1</a>
        </small>
        |
        <small>
        <a href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz.md5">MD5</a>
        </small>
        |
        <small>
        <a href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz.asc">PGP</a>
        </small>
      </p>
      <p>
        <h4>[<a href="/download">Other Downloads</a>]</h4>
        <h4>[<a href="/changelog">Changelog</a>]</h4>
      </p>
    </div>
    </div>
    <h3>Getting Started</h3>
    <p>
      <ul>
        <li>
          <b>Download Apache Thrift</b>
          <p>To get started, <a href="/download">download</a> a copy of Thrift.</p>
        </li>
        <li>
          <b>Build and Install the Apache Thrift compiler</b>
          <p>You will then need to <a href="/docs/BuildingFromSource">build</a> the Apache Thrift compiler and install it. See the <a href="/docs/install">installing Thrift</a> guide for any help with this step.</p>
        </li>
        <li>
          <b>Writing a .thrift file</b>
          <p>After the Thrift compiler is installed you will need to create a thrift file. This file is an <a href="/docs/idl">interface definition</a> made up of <a href="/docs/types">thrift types</a> and Services. The services you define in this file are implemented by the server and are called by any clients. The Thrift compiler is used to generate your Thrift File into source code which is used by the different client libraries and the server you write. To generate the source from a thrift file run</p>
          <pre><code>thrift --gen &lt;language&gt; &lt;Thrift filename&gt;</code></pre>
          <p>The sample tutorial.thrift file used for all the client and server tutorials can be found <a href="https://github.com/apache/thrift/tree/master/tutorial">here</a>. </p>
        </li>
      </ul>
    </p>
    <br />
    <p>
      To learn more about Apache Thrift <a href="/static/files/thrift-20070401.pdf">Read the Whitepaper</a>
    </p>
  </div>
</div>
<hr />

<h3>Example</h3>

<p>Apache Thrift allows you to define data types and service interfaces in a simple definition file. Taking that file as input, the compiler generates code to be used to easily build RPC clients and servers that communicate seamlessly across programming languages. Instead of writing a load of boilerplate code to serialize and transport your objects and invoke remote methods, you can get right down to business.</p>

<p>The following example is a simple service to store user objects for a web front end.</p>

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

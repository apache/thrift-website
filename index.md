---
title: Home
---

<div class="row">
  <div class="span8">
    <p>
      The Apache Thrift software framework, for scalable cross-language services development, combines a software stack with a code generation engine to build services that work efficiently and seamlessly between C++, Java, Python, PHP, Ruby, Erlang, Perl, Haskell, C#, Cocoa, JavaScript, Node.js, Smalltalk, OCaml and Delphi and other languages.
    </p>
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
  <div class="span3 well center pull-right">
    <h2>Download</h2>
    <p>Apache Thrift v{{ site.current_release }}</p>
    <p>
      <a class="btn btn-large" href="{{ site.mirror_url }}/thrift/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz">
          Download <small>v{{ site.current_release }}</small>
      </a>
    </p>
    <p>
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
      [snippet:path=tutorial/tutorial.thrift:lang=text:lines=125,147]
    </div>
    <div class="tab-pane" id="2">
      [snippet:path=tutorial/py/PythonClient.py:lang=python:lines=36,55]
    </div>
    <div class="tab-pane" id="3">
    Initialize the Server:
      [snippet:path=tutorial/java/src/JavaServer.java:lang=java:lines:65,76]

    The CalculatorHandler:
      [snippet:path=tutorial/java/src/CalculatorHandler.java:lang=java:lines:28,91]
    </div>
  </div>
</div>


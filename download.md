---
title: "Download"
---
## Release
The latest stable release of Thrift is {{ conf.current_release }} (released on {{ conf.current_release_date }}).

* [thrift-{{ conf.current_release }}.tar.gz]({{ conf.mirror_url }}/thrift/{{ conf.current_release }}/thrift-{{ conf.current_release }}.tar.gz) \[[PGP]({{ conf.release_url }}/{{ conf.current_release }}/thrift-{{ conf.current_release }}.tar.gz.asc)\]
\[[MD5]({{ conf.release_url }}/{{ conf.current_release }}/thrift-{{ conf.current_release }}.tar.gz.md5)\]
* [Thrift compiler for Windows (thrift-{{ conf.current_release }}.exe)]({{ conf.mirror_url }}/thrift/{{ conf.current_release }}/thrift-{{ conf.current_release }}.exe) \[[PGP]({{ conf.release_url }}/{{ conf.current_release }}/thrift-{{ conf.current_release }}.exe.asc)\] \[[MD5]({{ conf.release_url }}/{{ conf.current_release }}/thrift-{{ conf.current_release }}.exe.md5)\]

## Maven artifact
<pre><code>&lt;dependency&gt;
  &lt;groupId&gt;org.apache.thrift&lt;/groupId&gt;
  &lt;artifactId&gt;libthrift&lt;/artifactId&gt;
  &lt;version&gt;{{ conf.current_release }}&lt;/version&gt;
&lt;/dependency&gt;
</code></pre>

When downloading from a mirror, please be sure to [verify](http://www.apache.org/info/verification.html) the checksums and signature (see the MD5 and PGP links above). The [KEYS]({{ conf.release_url }}/KEYS) file contains the public key(s) used for signing releases.

--- 

## Incubator Releases
Releases from the incubator ( less than 0.6.0 ) are available at the [Thrift Incubator Archive](http://archive.apache.org/dist/incubator/thrift)

Releases from 0.6.0 up to the current release are available at the [Apache Thrift Archive](http://archive.apache.org/dist/thrift)

---

## Git Checkout
For those who would like to participate in Thrift development, you may checkout Thrift from the [GitHub Repository](https://github.com/apache/thrift).
<pre><code>git clone https://github.com/apache/thrift.git
cd thrift
</code></pre>
We recommend you use our [docker development environment](https://github.com/apache/thrift/tree/master/build/docker) - the same environment the CI builds use.

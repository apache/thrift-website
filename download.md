---
title: "Download"
description: "Get the latest Thrift release, checksums, signatures, and source checkout details."
---

## Apache Thrift {{ site.current_release }}

It was released on {{ site.current_release_date }}. Choose the source distribution if you want the full project tree, or the Windows executable if you only need the compiler binary. See the Apache Thrift [changelog](/changelog) for release notes and development history.

<div class="download-grid">
  <article class="download-card">
    <p class="eyebrow">Source distribution</p>
    <h3><a href="{{ site.mirror_url }}/thrift/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz">thrift-{{ site.current_release }}.tar.gz</a></h3>
    <p class="pb-md">Recommended for building the compiler, libraries, examples, and release artifacts from the main project source.</p>
    <p class="py-md"><a class="btn" href="{{ site.mirror_url }}/thrift/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz">Download source</a></p>
    <div class="chip-row" aria-label="Source verification files">
      <a class="chip" href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz.asc">PGP</a>
      <a class="chip" href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz.sha256">SHA256</a>
      <a class="chip" href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz.sha1">SHA1</a>
      <a class="chip" href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.tar.gz.md5">MD5</a>
    </div>
  </article>

  <article class="download-card">
    <p class="eyebrow">Windows compiler</p>
    <h3><a href="{{ site.mirror_url }}/thrift/{{ site.current_release }}/thrift-{{ site.current_release }}.exe">thrift-{{ site.current_release }}.exe</a></h3>
    <p>A direct compiler binary for Windows environments where you do not need the full source distribution.</p>
    <p class="py-md"><a class="btn" href="{{ site.mirror_url }}/thrift/{{ site.current_release }}/thrift-{{ site.current_release }}.exe">Download compiler</a></p>
    <div class="chip-row" aria-label="Windows verification files">
      <a class="chip" href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.exe.asc">PGP</a>
      <a class="chip" href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.exe.sha256">SHA256</a>
      <a class="chip" href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.exe.sha1">SHA1</a>
      <a class="chip" href="{{ site.release_url }}/{{ site.current_release }}/thrift-{{ site.current_release }}.exe.md5">MD5</a>
    </div>
  </article>
</div>

## Maven artifact

```xml
<dependency>
  <groupId>org.apache.thrift</groupId>
  <artifactId>libthrift</artifactId>
  <version>{{ site.current_release }}</version>
</dependency>
```

## Check signatures before install

When downloading from a mirror, please be sure to [verify](http://www.apache.org/info/verification.html) the checksums and signature (see the SHA256/SHA1/MD5 and PGP links above). The [KEYS]({{ site.release_url }}/KEYS) file contains the public key(s) used for signing releases.

## Incubator Releases

[Thrift Incubator Archive](http://archive.apache.org/dist/incubator/thrift)
Versions earlier than 0.6.0.

[Apache Thrift Archive](http://archive.apache.org/dist/thrift)
Releases from 0.6.0 through the current line.

## Git checkout

For those who would like to participate in Thrift development, you may checkout Thrift from the [GitHub repository]({{ site.git_repo }}).

```sh
git clone https://github.com/apache/thrift.git
cd thrift
```

We recommend you use our [docker development environment](https://github.com/apache/thrift/tree/master/build/docker) - the same environment the CI builds use.

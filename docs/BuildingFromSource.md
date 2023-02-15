---
title: "Building From Source"
isdoc: true
---

## Building from source
First make sure your system meets all necessary [Apache Thrift Requirements](/docs/install)

If you are building from the first time out of the source repository, you will need to generate the configure scripts.  (This is not necessary if you downloaded a released tarball.)  From the top directory, do:

    ./bootstrap.sh

Once the configure scripts are generated, thrift can be configured.
From the top directory, do:

    ./configure

Disable a language:

    ./configure --without-java

You may need to specify the location of the boost files explicitly. If you installed boost in /usr/local, you would run configure as follows:

    ./configure --with-boost=/usr/local

If you want to override the logic of the detection of the Java SDK, use the JAVAC environment variable:

    ./configure JAVAC=/usb/bin/javac

Note that by default the thrift C++ library is typically built with debugging symbols included. If you want to customize these options you should use the CXXFLAGS option in configure, as such:

    ./configure CXXFLAGS='-g -O2'
    ./configure CFLAGS='-g -O2'
    ./configure CPPFLAGS='-DDEBUG_MY_FEATURE'

To see other configuration options run

    ./configure --help

Once you have run configure you can build Thrift via make:

    make

and run the test suite:

    make check

and the cross language test suite:

    python3 test/test.py

### Issues while compiling

* "compiler/cpp/thriftl.cc:2190: undefined reference to `yywrap'"

you need to install the [Flex library](https://github.com/westes/flex) (See also [Apache Thrift Requirements](/docs/install) ) and re-run the configuration script.

* mv: cannot stat "'.deps/TBinaryProtocol.Tpo': No such file or directory" while building the Thrift Runtime Library

Re-reun configure with

    --enable-libtool-lock

or by turning off parallel make by placing **.NOTPARALLEL:** in lib/cpp/Makefile or

    make -j 1

Although the thrift compiler build appears to be compatible with parallel make without libtool lock, the thrift runtime build is not.

## Installing

From the top directory, become superuser and do:

    make install

Note that some language packages must be installed manually using build tools
better suited to those languages (this applies to Java, Ruby, PHP).

Look for the README file in the `lib/<language>/` folder for more details on the installation of each language library package.

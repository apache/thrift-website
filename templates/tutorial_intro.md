## {{ headers.title }} Tutorial
----

### Introduction
All Apache Thrift tutorials require that you have:

1. The Apache Thrift Compiler and Libraries, see [Download](/download) and [Building from Source](/docs/BuildingFromSource) for more details.
1. Generated the [tutorial.thrift](https://github.com/apache/thrift/blob/master/tutorial/tutorial.thrift) and [shared.thrift](https://github.com/apache/thrift/blob/master/tutorial/shared.thrift) files:

		thrift -r --gen {{ headers.library_lang }} tutorial.thrift

1. Followed all prerequisites listed below.

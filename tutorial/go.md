---
title: "Go"
librarylang: "go"
layout: tutorial
tutorial: true
---

### Prerequisites

 * At least Go 1.7 is required to run the tutorial code.
 * The GOPATH may need to be adjusted, alternatively manually put the Go Thrift library files into a suitable location.
 * The Thrift library and compiler must be the same version. Applications might work even with a version mismatch, but this unsupported.
To use a specific version of the library, either clone the repository for that version, or use a package manager like [dep](https://golang.github.io/dep/) or [Go modules](https://github.com/golang/go/wiki/Modules).


### Client

[snippet:path=tutorial/go/src/client.go:lang=cpp:lines=22,99]


### Server

[snippet:path=tutorial/go/src/server.go:lang=cpp:lines=22,54]


### Server Handler

[snippet:path=tutorial/go/src/handler.go:lang=cpp:lines=22,200]


## Additional Information

 * Try using one of the other available protocols, default is binary.
 * Try using the buffered and/or framed transport options.
 * Note that both server and client must use the exact same protocol and transport stack.


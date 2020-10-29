---
title: "How to add new language bindings"
kind: doc
---
## Roadmap for adding new language bindings

When considering new language bindings, there are certain points to think about. First, you should find out, if you are about to implement completely new language bindings that are not yet supported with Thrift, or if you just want to add support for a specific "flavour" of an already implemented language.

### Q: The language exists, but it lacks support for $feature or $version! What should I do?

In that case, it is recommended to add the new feature as an option to the existing language. For a good model on how to do this take look at the js/nodejs implementations, or the various options that already exist for Python. `thrift --help` gives a great start. Depending on the amount of changes necessary, you will still find the rest of the document useful.


## General workflow

### Preparation

The good news is, although there is some work required, the process is not as hard as it looks. First, make sure you have a fully functional build environment and are able to [build the compiler from source](/docs/BuildingFromSource). Read the [How to Contribute](/docs/HowToContribute) section to understand, how the general contribution process works.

Next, search [Jira]({{ conf.jira_url }}) and maybe the mailing list archives. If you do not find anything similar, create a new ticket, shortly describing what you are planning. If you are not quite sure, ask on the [developer's mailing list](/mailing).

Now fork the [Apache Thrift code base](https://thrift.apache.org/developers) on GitHub. Although we accept patch files, especially for comparingly long-living feature branches (such as adding a new language) a GitHub branch is much easier to handle.

### Implement a minimal feature set

* Implement the [code generator](https://github.com/apache/thrift/tree/master/compiler/cpp/src/generate), typically by picking one from the existing pool that is close to what you need. There are already plenty of languages supported, and you'll find oop, procedural and functional styles. If in doubt, which one to choose of the two or three candidates you found, head to the next point

* Implement the Thrift library for that particular language, again by picking one of the [existing libraries](https://github.com/apache/thrift/tree/master/lib) as a starting point. Because the libraries differ largely with regard to the "depth" of their implementations it is recommended to have a closer look on what is implemented, and what is not. 

* Implement the standardized [Thrift cross platform test](https://github.com/apache/thrift/tree/master/test) and make sure all tests succeed when run against at least one other language. This ensures interoperability and makes sure that the code does not only work when talking with yourself (= same language). You may also add other tests, but these should be put into `lib/yourlang/test` rather than `test/yourlang` - the latter is intended to host solely the standardized cross platform test.

* Implement the [Tutorial code](https://github.com/apache/thrift/tree/master/tutorial) and test it against some other language. If you did everything well, this last step is comparingly easy.

### The minimal feature set

The minimum required feature set should cover at least:

* Transports: Sockets, Buffered, Framed required, HTTP client recommended
* Protocols: Binary and Multiplex required, JSON recommended
* Server types: SimpleServer required

### Other recommended features

These are not strictly required in the first run, but are commonly used. Depending on the language, some things may be easier to implement than others. Alternatively, consider adding the features listed below later as additional contributions instead of trying to press them into the initial contribution. **If in doubt, focus on quality rather than quantity**.

* Transports: HTTP server, Pipes, NamedPipes (where it makes sense)
* Protocols: Compact
* Server types: Nonblocking, Threaded and/or Threadpool server implementation
 
 
### Final things
 
* Add a `Readme.md` file to your library's folder, describing requirements, dependencies and what else might be important. Look at the existing Readme files if you are unsure about what to put into that file.

* Make sure the generator, library, tests and tutorial have proper `makefile.am` files. Include everything into the build/test scripts. If you need help with these steps, don't hesitate to ask on the mailing lists.

* Your done, now open a pull request! 

## Remarks

Note that the 4 implementation steps are not really a linear process, it is more kind of an iteration. Even if the code that comes out of the generator finally is compileable and does not spit out any warnings and seems to run fine, you still will run into problems as you move on with implementing library and tests. This is fully normal and expected.
  
It is a good idea to post your work early on the mailing lists, and to create the JIRA ticket early - that's why this particular point is on top of the list. This serves not only the purpose of announcing the work you are about to do, it is also a good starting point for other people who might be just looking for exactly that stuff. You will be able not only to get valuable early feedback, but probably also be able to raise some support with implementation and/or testing. Having someone else looking over your code (or reviewing each other) is generally a good thing, especially with regard to the overall quality of the contribution you are about to do.


Happy coding!

---
title: "Javascript"
librarylang: "js"
layout: tutorial
tutorial: true
---

### Prerequisites

* This tutorial depends on an existing Thrift server. See either the [Java tutorial](/tutorial/java) or [node.js tutorial](/tutorial/nodejs) for how to build and setup one of these servers. Out of the box, a Thrift HTTP server using the JSON protocol is expected. To learn more about how to use other transports and/or protocols refer to the "Additional Information" section below.

### Client

<pre><code class="language-js">
function calc() {
  var transport = new Thrift.Transport("/thrift/service/tutorial/");
  var protocol  = new Thrift.Protocol(transport);
  var client    = new CalculatorClient(protocol);

  var work = new Work()
  work.num1 = $("#num1").val();
  work.num2 = $("#num2").val();
  work.op = $("#op").val();

  try {
    result = client.calculate(1, work);
    $('#result').val(result);
    $('#result').css('color', 'black');
  } catch(ouch){
    $('#result').val(ouch.why);
    $('#result').css('color', 'red');
  }
}
</code></pre>

### Server

Use either the [Java tutorial](/tutorial/java) or [C++ tutorial](/tutorial/cpp) server


## Additional Information

### Inspecting the generated Javascript code and HTML code

Inside the html file is the entry point of using the Thrift.js and compiled Javascript files. The main section code from the tutorial.html file is the Thrift client as shown above.

The first thing for using the Thrift files is setting up your Transport protocol. At this time, it only supports AJAX and is as follows:

    var transport = new Thrift.Transport("/thrift/service/tutorial/");

After that the protocol needs setup using the transport object, which for Javascript is JSON:

    var protocol  = new Thrift.Protocol(transport);

Now we are setup for the full Thrift communications, so we can start instantiating the Thrift objects, which define our Services and Objects.

    var client    = new CalculatorClient(protocol);

Now that we have a functional Service Interface object created, we can can setup the JSON object, which gets is needed by the service routine and gets passed to it:

    var work = new Work()
    work.num1 = $("#num1").val();
    work.num2 = $("#num2").val();
    work.op = $("#op").val();

Once the object is created, we can now pass

    try {
        result = client.calculate(1, work);
        //etc......

Now, when the calculate button on the html page is clicked, the calc() function as defined above is called and we get an AJAX call, which blocks and waits for the response. This then updates the result from the calculation.

### Inspecting the generated tutorial_types.js file

Each Thrift struct will have properties associated with it.  For our tutorial object, Work, this is as shown above. For example:

    var work = new Work();
    work.num1 = 1;
    work.num2 = 2;
    work.op = ADD;

In addition, there is a read(input) and write(output) function created on the object as well. For the end user, these are not functions to be used as they are mainly just used by the Thrift.js file for accessing objects.

### Inspecting the generated Calculator.js file
The Calculator.js file is the services created and defined in the .thrift file. The two services defined are:

    i32 add(1:i32 num1, 2:i32 num2),
    i32 calculate(1:i32 logid, 2:Work w) throws (1:InvalidOperation ouch),

To start using this, the Calculator object has to be created and accessed as shown above. The Javascript Object, whichi is your interface to the services created looks like this:

    CalculatorClient = function(input, output){}

Then, to access your defined services, the functions created look like this:

    CalculatorClient.prototype.add = function(num1, num2) {}

and

    CalculatorClient.prototype.calculate = function(logid, w) {}

Unfortunately, the Javascript object isn't just called Calculator and there are a lot of other functions defined as well, but how those are used are out of the scope of this tutorial.

### Inspecting the Thrift.js file

* The main goal of the library is to define the Transport and Protocol layers.
* The Transport layer can use AJAX or WebSockets.
* The Protocol layer handles the encoding/decoding to JSON or Binary format.
* There are also the Thrift object types and call functions defined here as well.
* The Thrift.js library can use jQuery.js if provided.

#### jQuery API

jQuery aware JS source files can generated using the *jquery* compiler option:

    thrift --gen js:jquery tutorial.thrift

This does not change the default behavior of the library, i.e. service calls will be done synchronously. However, services will use jQuery.ajax if a callback function is provided as showed below.

    client.calculate(1, work, function(result) { alert(result); } );

This method call will immediately return but the callback function (and its *alert* message) will be called as soon as a response is received from the server. The service call also returns a jqXHR object, which has more callback options:

    client.calculate(1, work, function(){} )
    .fail( function(jqXHR, status, error) {  alert(error.message); } )
    .done( function(result) { /* success! do something */ } )
    .always( function() { /* do something more */ } );

For more information refer to the [jQuery API documentation](http://api.jquery.com/jquery.ajax/).

Note: Synchronously calls are easy to debug and good for testing but should not be used on a front-end browser in production, as it will normally result on a full browser freeze until the response has returned from the server.

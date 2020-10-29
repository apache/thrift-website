---
title: "Actionscript 3.0"
librarylang: "as3"
layout: tutorial
tutorial: true
---

### Prerequisites


### Client
To initialize client you can use code similar to:

  [snippet:path=tutorial/as3/src/CalculatorUI.as:lang=java:lines=42,48]

### Server
The example client above can be tested against a java tutorial server.


### Additional Information

You might find server failing due to out of memory exception. This might happen because of flash crossdomain policy. See
next passage on how to fix this.

### Flash crossdomain policy

Flash does not allow movies to connect to arbitrary servers. This is done for security reasons. To override this
restriction, however, servers' owners can create special file - crossdomain xml file, which lists the rules according to
which some flash movies can connect to the server.

Details about this behavior are listed in
[Setting up a socket policy file server](http://www.adobe.com/devnet/flashplayer/articles/socket_policy_files.html).
Also, you can find a simple python/perl server script to serve this file there. For same host, you can serve
crossdomain.xml from any port. So, you can start your RPC servers on ports 9090 and 9091, and serve polisy file from
port 9092. To tell flash about this, you can use code from tutorial file:

  [snippet:path=tutorial/as3/src/CalculatorUI.as:lang=java:lines=35,37]

Example of crossdomain file, to allow connect to ports 9090 and 9091 from any server:

<pre><code>
&lt;?xml version="1.0"?&gt;
&lt;!DOCTYPE cross-domain-policy SYSTEM "/xml/dtds/cross-domain-policy.dtd"&gt;
&lt;!-- Policy file --&gt;
&lt;cross-domain-policy&gt;
  &lt;allow-access-from domain="*" to-ports="9090,9091" /&gt;
&lt;/cross-domain-policy&gt;
</code></pre>

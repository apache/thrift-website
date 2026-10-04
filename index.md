---
title: Home
home: true
---

<div class="hero">
  <div class="hero-content">
    <h1>Build services without forcing one stack.</h1>
      <p class="mb-lg">Apache Thrift combines an interface definition language, code generation, and runtime libraries so services can stay portable across C++, Java, Python, PHP, Ruby, JavaScript, Node.js, and more.</p>
            <a class="btn my-md" href="/download">
            Download v{{ site.current_release }}
        </a>
  </div>
</div>

<div class="inner">
  <div class="flex gap flex-col md:flex-row mb-lg">
  <div class="block flex-1">
      <div class="hrline"></div>
      <h2>Only one IDL for many runtimes</h2>
      <p>Model services and data in a small, readable contract, generate client and server code for the languages already in your stack.</p>
  </div>
  <div class="block flex-1">
      <div class="hrline"></div>
      <h2>Code generation with wire stack</h2>
      <p>Thrift ships both the compiler and the runtime pieces, so transports, protocols, and serialization do not need to be rebuilt per service.</p>
  </div>
  <div class="block flex-1">
    <div class="hrline"></div>
    <h2>Portable for long-lived systems</h2>
    <p>Generated interfaces help teams move between services and languages gradually instead of tying everything to a single framework or platform.</p>
  </div>
  </div>
</div>

<div class="inner py-lg">
  <h3>Start with the contract, not the boilerplate.</h3>
  <p>
  Define your service once as a contract. Everything else can be generated. Clients, servers, and types all come from a single source of truth. No hand-written bindings. No duplicated logic across languages. Just the API.
  </p>
  
{% highlight thrift %}
// Define a service using a simple, language-neutral interface.
// Methods define inputs, outputs, and optional exceptions.
service Galaxy {
  // Retrieves detailed information about a star system.
  StarSystem getSystem(1:string systemId),
  // Calculates a navigation path, accounting for distance and hazards.
  Trajectory plotCourse(1:string fromSystem, 2:string toSystem) throws (1:NavigationError err),
}

// A star system represents a single navigable region in the galaxy.
struct StarSystem {
1: string id
}

// A trajectory describes a computed route between star systems.
struct Trajectory {
1: list<string> path
}

// Raised when a navigation request cannot be completed.
exception NavigationError {
1: string message
}
{% endhighlight %}

  <p><b>Continue</b> with the  <a href="/docs/getting_started">tutorial</a> to get up and running or <b>learn</b> more about Apache Thrift in the  <a href="/static/files/thrift-20070401.pdf">Whitepaper</a>.</p>
</div>

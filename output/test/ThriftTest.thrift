<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <meta content="en-us" http-equiv="Content-Language" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="/static/images/favicon.ico" rel="shortcut icon" />
    <link href="/static/css/style.css" rel="stylesheet" type="text/css" />
    <link href="/static/css/codehilite.css" rel="stylesheet" type="text/css" />
    <link href="/static/css/bootstrap.css" media="screen, projection" rel="stylesheet" type="text/css" />
    <link href="/static/css/thrift.css" media="screen, projection" rel="stylesheet" type="text/css" />

    <script src="/static/js/jquery.min.js"></script>
    <script src="/static/js/bootstrap-dropdown.js"></script>
    <script src="/static/js/bootstrap-tab.js"></script>
    <script src="/static/js/thrift.js"></script>

    <title>Apache Thrift - ThriftTest</title>
  </head>
  <body>
    <div class="navbar">
  <div class="navbar-inner">
    <div class="container">
      <a class="brand" href="/">Apache Thrift &trade;</a>
      <div class="nav-collapse">
        <ul class="nav pull-right">
          <li><a href="/download">Download</a></li>
          <li><a href="/docs">Documentation</a></li>
          <li><a href="/developers">Developers</a></li>
          <li><a href="/lib">Libraries</a></li>
          <li><a href="/tutorial">Tutorial</a></li>
          <li><a href="/test">Test Suite</a></li>
          <li><a href="/about">About</a></li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Apache <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="http://www.apache.org/" target="_blank">Apache Home</a></li>
              <li><a href="http://www.apache.org/licenses/" target="_blank">Apache License v2.0</a></li>
              <li><a href="http://www.apache.org/foundation/sponsorship.html" target="_blank">Donate</a></li>
              <li><a href="http://www.apache.org/foundation/thanks.html" target="_blank">Thanks</a></li>
              <li><a href="http://www.apache.org/security/" target="_blank">Security</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>

    <div class="container">
      
<div class="highlight"><pre class="codehilite"><code>/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
 * Contains some contributions under the Thrift Software License.
 * Please see doc/old-thrift-license.txt in the Thrift distribution for
 * details.
 */

namespace c_glib TTest
namespace cpp thrift.test
namespace delphi Thrift.Test
namespace go thrifttest
namespace java thrift.test
namespace js ThriftTest
namespace lua ThriftTest
namespace netstd ThriftTest
namespace perl ThriftTest
namespace php ThriftTest
namespace py ThriftTest
namespace py.twisted ThriftTest
namespace rb Thrift.Test
namespace st ThriftTest
namespace xsd test (uri = 'http://thrift.apache.org/ns/ThriftTest')

// Presence of namespaces and sub-namespaces for which there is
// no generator should compile with warnings only
namespace noexist ThriftTest
namespace cpp.noexist ThriftTest

namespace * thrift.test

/**
 * Docstring!
 */
enum Numberz
{
  ONE = 1,
  TWO,
  THREE,
  FIVE = 5,
  SIX,
  EIGHT = 8
}

const Numberz myNumberz = Numberz.ONE;
// the following is expected to fail:
// const Numberz urNumberz = ONE;

typedef i64 UserId

struct Bonk
{
  1: string message,
  2: i32 type
}

typedef map&lt;string,Bonk&gt; MapType

struct Bools {
  1: bool im_true,
  2: bool im_false,
}

struct Xtruct
{
  1:  string string_thing,
  4:  i8     byte_thing,
  9:  i32    i32_thing,
  11: i64    i64_thing
}

struct Xtruct2
{
  1: i8     byte_thing,  // used to be byte, hence the name
  2: Xtruct struct_thing,
  3: i32    i32_thing
}

struct Xtruct3
{
  1:  string string_thing,
  4:  i32    changed,
  9:  i32    i32_thing,
  11: i64    i64_thing
}


struct Insanity
{
  1: map&lt;Numberz, UserId&gt; userMap,
  2: list&lt;Xtruct&gt; xtructs
} (python.immutable= "")

struct CrazyNesting {
  1: string string_field,
  2: optional set&lt;Insanity&gt; set_field,
  // Do not insert line break as test/go/Makefile.am is removing this line with pattern match
  3: required list&lt;map&lt;set&lt;i32&gt; (python.immutable = ""), map&lt;i32,set&lt;list&lt;map&lt;Insanity,string&gt;(python.immutable = "")&gt; (python.immutable = "")&gt;&gt;&gt;&gt; list_field,
  4: binary binary_field
  5: uuid uuid_field
}

union SomeUnion {
  1: map&lt;Numberz, UserId&gt; map_thing,
  2: string string_thing,
  3: i32 i32_thing,
  4: Xtruct3 xtruct_thing,
  5: Insanity insanity_thing
}

exception Xception {
  1: i32 errorCode,
  2: string message
}

exception Xception2 {
  1: i32 errorCode,
  2: Xtruct struct_thing
}

struct EmptyStruct {}

struct OneField {
  1: EmptyStruct field
}

service ThriftTest
{
  /**
   * Prints "testVoid()" and returns nothing.
   */
  void         testVoid(),

  /**
   * Prints 'testString("%s")' with thing as '%s'
   * @param string thing - the string to print
   * @return string - returns the string 'thing'
   */
  string       testString(1: string thing),

  /**
   * Prints 'testBool("%s")' where '%s' with thing as 'true' or 'false'
   * @param bool  thing - the bool data to print
   * @return bool  - returns the bool 'thing'
   */
  bool         testBool(1: bool thing),

  /**
   * Prints 'testByte("%d")' with thing as '%d'
   * The types i8 and byte are synonyms, use of i8 is encouraged, byte still exists for the sake of compatibility.
   * @param byte thing - the i8/byte to print
   * @return i8 - returns the i8/byte 'thing'
   */
  i8           testByte(1: i8 thing),

  /**
   * Prints 'testI32("%d")' with thing as '%d'
   * @param i32 thing - the i32 to print
   * @return i32 - returns the i32 'thing'
   */
  i32          testI32(1: i32 thing),

  /**
   * Prints 'testI64("%d")' with thing as '%d'
   * @param i64 thing - the i64 to print
   * @return i64 - returns the i64 'thing'
   */
  i64          testI64(1: i64 thing),

  /**
   * Prints 'testDouble("%f")' with thing as '%f'
   * @param double thing - the double to print
   * @return double - returns the double 'thing'
   */
  double       testDouble(1: double thing),

  /**
   * Prints 'testBinary("%s")' where '%s' is a hex-formatted string of thing's data
   * @param binary  thing - the binary data to print
   * @return binary  - returns the binary 'thing'
   */
  binary       testBinary(1: binary thing),

  /**
   * Prints 'testUuid("%s")' where '%s' is the uuid given. Note that the uuid byte order should be correct.
   * @param uuid  thing - the uuid to print
   * @return uuid  - returns the uuid 'thing'
   */
  uuid       testUuid(1: uuid thing),

  /**
   * Prints 'testStruct("{%s}")' where thing has been formatted into a string of comma separated values
   * @param Xtruct thing - the Xtruct to print
   * @return Xtruct - returns the Xtruct 'thing'
   */
  Xtruct       testStruct(1: Xtruct thing),

  /**
   * Prints 'testNest("{%s}")' where thing has been formatted into a string of the nested struct
   * @param Xtruct2 thing - the Xtruct2 to print
   * @return Xtruct2 - returns the Xtruct2 'thing'
   */
  Xtruct2      testNest(1: Xtruct2 thing),

  /**
   * Prints 'testMap("{%s")' where thing has been formatted into a string of 'key =&gt; value' pairs
   *  separated by commas and new lines
   * @param map&lt;i32,i32&gt; thing - the map&lt;i32,i32&gt; to print
   * @return map&lt;i32,i32&gt; - returns the map&lt;i32,i32&gt; 'thing'
   */
  map&lt;i32,i32&gt; testMap(1: map&lt;i32,i32&gt; thing),

  /**
   * Prints 'testStringMap("{%s}")' where thing has been formatted into a string of 'key =&gt; value' pairs
   *  separated by commas and new lines
   * @param map&lt;string,string&gt; thing - the map&lt;string,string&gt; to print
   * @return map&lt;string,string&gt; - returns the map&lt;string,string&gt; 'thing'
   */
  map&lt;string,string&gt; testStringMap(1: map&lt;string,string&gt; thing),

  /**
   * Prints 'testSet("{%s}")' where thing has been formatted into a string of values
   *  separated by commas and new lines
   * @param set&lt;i32&gt; thing - the set&lt;i32&gt; to print
   * @return set&lt;i32&gt; - returns the set&lt;i32&gt; 'thing'
   */
  set&lt;i32&gt;     testSet(1: set&lt;i32&gt; thing),

  /**
   * Prints 'testList("{%s}")' where thing has been formatted into a string of values
   *  separated by commas and new lines
   * @param list&lt;i32&gt; thing - the list&lt;i32&gt; to print
   * @return list&lt;i32&gt; - returns the list&lt;i32&gt; 'thing'
   */
  list&lt;i32&gt;    testList(1: list&lt;i32&gt; thing),

  /**
   * Prints 'testEnum("%d")' where thing has been formatted into its numeric value
   * @param Numberz thing - the Numberz to print
   * @return Numberz - returns the Numberz 'thing'
   */
  Numberz      testEnum(1: Numberz thing),

  /**
   * Prints 'testTypedef("%d")' with thing as '%d'
   * @param UserId thing - the UserId to print
   * @return UserId - returns the UserId 'thing'
   */
  UserId       testTypedef(1: UserId thing),

  /**
   * Prints 'testMapMap("%d")' with hello as '%d'
   * @param i32 hello - the i32 to print
   * @return map&lt;i32,map&lt;i32,i32&gt;&gt; - returns a dictionary with these values:
   *   {-4 =&gt; {-4 =&gt; -4, -3 =&gt; -3, -2 =&gt; -2, -1 =&gt; -1, }, 4 =&gt; {1 =&gt; 1, 2 =&gt; 2, 3 =&gt; 3, 4 =&gt; 4, }, }
   */
  map&lt;i32,map&lt;i32,i32&gt;&gt; testMapMap(1: i32 hello),

  /**
   * So you think you've got this all worked out, eh?
   *
   * Creates a map with these values and prints it out:
   *   { 1 =&gt; { 2 =&gt; argument,
   *            3 =&gt; argument,
   *          },
   *     2 =&gt; { 6 =&gt; &lt;empty Insanity struct&gt;, },
   *   }
   * @return map&lt;UserId, map&lt;Numberz,Insanity&gt;&gt; - a map with the above values
   */
  map&lt;UserId, map&lt;Numberz,Insanity&gt;&gt; testInsanity(1: Insanity argument),

  /**
   * Prints 'testMulti()'
   * @param i8 arg0 -
   * @param i32 arg1 -
   * @param i64 arg2 -
   * @param map&lt;i16, string&gt; arg3 -
   * @param Numberz arg4 -
   * @param UserId arg5 -
   * @return Xtruct - returns an Xtruct with string_thing = "Hello2, byte_thing = arg0, i32_thing = arg1
   *    and i64_thing = arg2
   */
  Xtruct testMulti(1: i8 arg0, 2: i32 arg1, 3: i64 arg2, 4: map&lt;i16, string&gt; arg3, 5: Numberz arg4, 6: UserId arg5),

  /**
   * Print 'testException(%s)' with arg as '%s'
   * @param string arg - a string indication what type of exception to throw
   * if arg == "Xception" throw Xception with errorCode = 1001 and message = arg
   * else if arg == "TException" throw TException
   * else do not throw anything
   */
  void testException(1: string arg) throws(1: Xception err1),

  /**
   * Print 'testMultiException(%s, %s)' with arg0 as '%s' and arg1 as '%s'
   * @param string arg - a string indicating what type of exception to throw
   * if arg0 == "Xception" throw Xception with errorCode = 1001 and message = "This is an Xception"
   * else if arg0 == "Xception2" throw Xception2 with errorCode = 2002 and struct_thing.string_thing = "This is an Xception2"
   * else do not throw anything
   * @return Xtruct - an Xtruct with string_thing = arg1
   */
  Xtruct testMultiException(1: string arg0, 2: string arg1) throws(1: Xception err1, 2: Xception2 err2)

  /**
   * Print 'testOneway(%d): Sleeping...' with secondsToSleep as '%d'
   * sleep 'secondsToSleep'
   * Print 'testOneway(%d): done sleeping!' with secondsToSleep as '%d'
   * @param i32 secondsToSleep - the number of seconds to sleep
   */
  oneway void testOneway(1:i32 secondsToSleep)
}

service SecondService
{
  /**
   * Prints 'testString("%s")' with thing as '%s'
   * @param string thing - the string to print
   * @return string - returns the string 'thing'
   */
  string secondtestString(1: string thing)
}

struct VersioningTestV1 {
       1: i32 begin_in_both,
       3: string old_string,
       12: i32 end_in_both
}

struct VersioningTestV2 {
       1: i32 begin_in_both,

       2: i32 newint,
       3: i8 newbyte,
       4: i16 newshort,
       5: i64 newlong,
       6: double newdouble
       7: Bonk newstruct,
       8: list&lt;i32&gt; newlist,
       9: set&lt;i32&gt; newset,
       10: map&lt;i32, i32&gt; newmap,
       11: string newstring,
       12: i32 end_in_both
}

struct ListTypeVersioningV1 {
       1: list&lt;i32&gt; myints;
       2: string hello;
}

struct ListTypeVersioningV2 {
       1: list&lt;string&gt; strings;
       2: string hello;
}

struct GuessProtocolStruct {
  7: map&lt;string,string&gt; map_field,
}

struct LargeDeltas {
  1: Bools b1,
  10: Bools b10,
  100: Bools b100,
  500: bool check_true,
  1000: Bools b1000,
  1500: bool check_false,
  2000: VersioningTestV2 vertwo2000,
  2500: set&lt;string&gt; a_set2500,
  3000: VersioningTestV2 vertwo3000,
  4000: list&lt;i32&gt; big_numbers
}

struct NestedListsI32x2 {
  1: list&lt;list&lt;i32&gt;&gt; integerlist
}
struct NestedListsI32x3 {
  1: list&lt;list&lt;list&lt;i32&gt;&gt;&gt; integerlist
}
struct NestedMixedx2 {
  1: list&lt;set&lt;i32&gt;&gt; int_set_list
  2: map&lt;i32,set&lt;string&gt;&gt; map_int_strset
  3: list&lt;map&lt;i32,set&lt;string&gt;&gt;&gt; map_int_strset_list
}
struct ListBonks {
  1: list&lt;Bonk&gt; bonk
}
struct NestedListsBonk {
  1: list&lt;list&lt;list&lt;Bonk&gt;&gt;&gt; bonk
}

struct BoolTest {
  1: optional bool b = true;
  2: optional string s = "true";
}

struct StructA {
  1: required string s;
}

struct StructB {
  1: optional StructA aa;
  2: required StructA ab;
}

struct OptionalSetDefaultTest {
  1: optional set&lt;string&gt; with_default = [ "test" ]
}

struct OptionalBinary {
  1: optional set&lt;binary&gt; bin_set = {}
  2: optional map&lt;binary,i32&gt; bin_map = {}
}
</code></pre></div>
<p class="snippet_footer">This snippet was generated by Apache Thrift's <strong>source tree docs</strong>:
<a href="https://gitbox.apache.org/repos/asf?p=thrift.git;a=blob;hb=HEAD;f=test/ThriftTest.thrift">test/ThriftTest.thrift</a>
</p>
      

    </div>
    <div class="container">
  <hr>
  <footer class="footer">
    <div class="row">
      <div class="span3">
        <h3>Links</h3>
        <ul class="unstyled">
          <li><a href="/download">Download</a></li>
          <li><a href="/developers">Developers</a></li>
          <li><a href="/tutorial">Tutorials</a></li>
        </ul>
        <ul class="unstyled">
          <li><a href="/sitemap">Sitemap</a></li>
        </ul>
      </div>
      <div class="span3">
        <h3>Get Involved</h3>
        <ul class="unstyled">
          <li><a href="/mailing">Mailing Lists</a></li>
          <li><a href="http://issues.apache.org/jira/browse/THRIFT">Issue Tracking</a></li>
          <li><a href="/docs/HowToContribute">How To Contribute</a></li>
        </ul>
      </div>
      <div class="span6">
        <a href="http://www.apache.org/"><img src="/static/images/feather.svg" onerror="this.src='/static/images/feather.png';this.onerror=null;" /></a>
        Copyright &copy; 2022 <a href="http://www.apache.org/">Apache Software Foundation</a>.
        Licensed under the <a href="http://www.apache.org/licenses/">Apache License v2.0</a>.
        Apache, Apache Thrift, and the Apache feather logo are trademarks of The Apache Software Foundation.
      </div>
    </div>
  </footer>
</div>

  </body>
</html>

Snippets
========

CLI tool to collect and report on snippets (a Googley list of things
completed).


Status
------

Still under development.  This code probably isn't useful yet.


Requirements
------------

The backend is Amazon's DynamoDB, which sounds like overkill, but I
wanted something schemaless which I can also use with an IRC/chat bot
and which costs zero or near zero dollars to run.  DynamoDB fits the
bill.

Also:

  * Ruby (tested with v2.2.2)
  * Bundler

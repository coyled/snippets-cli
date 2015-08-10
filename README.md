Snippets
========

CLI tool to collect and report on snippets (a Googley list of things
completed).


Status
------

Still under development.  This code probably isn't useful yet.

[![Build Status](https://semaphoreci.com/api/v1/projects/242992ab-ea4e-43b3-8715-751bcb36b083/506821/shields_badge.svg)](https://semaphoreci.com/coyled/snippets-cli)


Requirements
------------

The backend is Amazon's DynamoDB, which sounds like overkill, but I
wanted something schemaless which I can also use with an IRC/chat bot
and which costs zero or near zero dollars to run.  DynamoDB fits the
bill.

Also:

  * Ruby (tested with v2.2.2)
  * Bundler

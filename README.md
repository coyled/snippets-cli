Snippets
========

CLI tool to collect and report on snippets (a Googley list of things
completed).


Status
------

Still under development.  This code probably isn't useful yet.

[![Project Status: WIP - Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)

[![Build Status](https://travis-ci.org/coyled/snippets-cli.svg?branch=master)](https://travis-ci.org/coyled/snippets-cli)

[![Code Climate](https://codeclimate.com/github/coyled/snippets-cli/badges/gpa.svg)](https://codeclimate.com/github/coyled/snippets-cli)


Requirements
------------

The backend is Amazon's DynamoDB, which sounds like overkill, but I
wanted something schemaless which I can also use with an IRC/chat bot
and which costs zero or near zero dollars to run.  DynamoDB fits the
bill.

Also:

  * Ruby (tested with v2.6)
  * Bundler

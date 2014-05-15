# casino-test_authenticator [![Build Status](https://travis-ci.org/beezly/casino-test_authenticator.png?branch=master)](https://travis-ci.org/beezly/casino-test_authenticator) [![Coverage Status](https://coveralls.io/repos/beezly/casino-test_authenticator/badge.png)](https://coveralls.io/r/beezly/casino-test_authenticator)Provides a test authenticator for [CASino](https://github.com/rbCAS/CASino).

I've written a [blog article](http://beez.ly/2014/05/15/building-a-development-cas-environment-with-casinoapp-and-casino-test_authenticator/) on how to use this with CASinoApp.

The test authenticator will validate a user if the username and password match.

**The test authenticator should only be used in environments where you do not care about security**

To use the test authenticator, configure it in your cas.yml:

    authenticators:
      test_authenticator:
        authenticator: "Test"
        options:

Currently there are no options.

## Contributing to casino-test_authenticator

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 Andrew Beresford. See LICENSE.txt
for further details.

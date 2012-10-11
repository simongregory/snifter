# Snifter

[![Build Status](https://secure.travis-ci.org/simongregory/snifter.png)](http://travis-ci.org/simongregory/snifter)
[![Dependency Status](https://gemnasium.com/simongregory/snifter.png)](https://gemnasium.com/simongregory/snifter)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/simongregory/snifter)

Maybe twitter could be used to monitor user feedback in a useful way...

## Install

Only known to work on Ruby 1.9.3

    gem install snifter --pre

OR

    git clone [this repo]
    cd snifter
    bundle install
    gem build snifter.gemspec
    gem install snifter

## Setup

This bit is clunky, but Twitter requires both application and user credentials to use to it's API. To create them go to:

[https://dev.twitter.com/apps]()

and click on 'Create a new application', name it etc. Once complete copy the tokens into the credentials.yml file.

If you build and install the gem then the `snifter` tool expects a valid credentials file in your $HOME directory named .snifter. You can copy the credentials.yml there. It's probably best to then chmod the file so only you have read access

    chmod 600 ~/.snifter

## Use

Try it with

    snifter
    snifter 4od

And you should see something like:

![Terminal Screen Shot](https://github.com/simongregory/snifter/raw/master/screenshots/snifter.png)

## License

Released under the MIT License. Please see the accompanying [LICENSE](LICENSE) document for
details.

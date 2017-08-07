# Logstash Codec snowplow

[![Gem Version](https://badge.fury.io/rb/logstash-codec-snowplow.svg)](http://badge.fury.io/rb/logstash-codec-snowplow) [![Build Status](https://travis-ci.org/active-agent/logstash-codec-snowplow.svg?branch=master)](https://travis-ci.org/active-agent/logstash-codec-snowplow)

## Install

    $ ./bin/plugin install logstash-codec-snowplow

## Usage

```ruby
input {
  kafka {
    codec => snowplow {}
  }
}
```

## Install dependencies

Install jruby:

    $ brew install jruby

Install jruby bundler:

    $ jruby -S gem install bundler

Install plugin dependencies:

    $ jruby -S bundler install

## Build & Install

Build Gem:

    $ gem build logstash-codec-snowplow.gemspec

Install Gem:

    $ ./bin/plugin install /your/local/plugin/logstash-codec-snowplow.gem

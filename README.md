# FiddleFart

FiddleFart is the parsing tool which takes a URL from any of the
following services and normalizes the embed data.

* [jsfiddle.net](http://jsfiddle.net)
* [jsbin.com](http://jsbin.com)
* [codepen.io](http://codepen.io)
* [plnkr.co](http://plnkr.co)

The goal of this gem is to make it very easy to extract out embed
URLs.

## Installation

Add this line to your application's Gemfile:

    gem 'fiddle_fart'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fiddle_fart

## Usage

```ruby
obj = FiddleFart::Parser.parse(url)
embed_url = obj.embed_url
# => blah


## Contributing

1. Fork it ( http://github.com/<my-github-username>/fiddle_fart/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

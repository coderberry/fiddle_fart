# FiddleFart

FiddleFart is the parsing tool which takes a URL from any of the
following services and normalizes the embed data.

* [jsfiddle.net](http://jsfiddle.net)
* [jsbin.com](http://jsbin.com)
* [codepen.io](http://codepen.io)
* [plnkr.co](http://plnkr.co)

The goal of this gem is to make it very easy to extract out embed
URLs (for use in other *future* applications).

## Installation

Add this line to your application's Gemfile:

    gem 'fiddle_fart'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fiddle_fart

## Usage

```ruby
require 'fiddle_fart'

url = "http://jsbin.com/eyOlOFI/7/edit"
obj = FiddleFart::Parser.parse(url)
obj.embed_url # => "http://jsbin.com/eyOlOFI/7/embed"

url = "http://codepen.io/cmykw/pen/krqIt"
obj = FiddleFart::Parser.parse(url)
obj.share_link # => "http://codepen.io/cmykw/full/krqIt"

url = "http://jsfiddle.net/cavneb/sKfS8/"
obj = FiddleFart::Parser.parse(url)
obj.embed_url # => "http://jsfiddle.net/cavneb/sKfS8//embedded/result/"

url = "http://plnkr.co/edit/ZTArBF?p=info"
obj = FiddleFart::Parser.parse(url)
obj.embed_url # => "http://embed.plnkr.co/ZTArBF/preview"
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/fiddle_fart/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

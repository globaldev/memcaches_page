# MemcachesPage

Overrides `caches_page` and stores in memcached instead. Uses configuration from Rails cache store.

## Installation

Add this line to your application's Gemfile:

    gem 'memcaches_page'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install memcaches_page

## Usage

### Configuration

```ruby
config.cache_store :dalli_store, ['memcache.dev:11211'], expires_in: 604800, namespace: "site"
```

Note, ensure compression isn't used, or if you do configure nginx to inflate it before serving.

### Caching

In your controller (or `ApplicationController`), simply include the module:

```ruby
class ApplicationController < ActionController::Base
  include MemcachesPage
end
```

Then use `caches_page` as normal.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Licence

(The MIT License)

Copyright (c) 2012 Global Personals, Ltd.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

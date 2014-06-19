# Activerecord Class Cache

### Sometimes you need classier caching...
The purpose of this gem is for unique caching situtations where you wish to cache an entire collection.
By adding this to your to your activerecord project, you will get the class method .cache_key

You can then use this like `Model.cache_key` which will return the MD5 sum of the maximum updated_at timestamp plus the count of records in that model's table.

I use this method in a few small areas in a project like so:

    Rails.cache.fetch ['admin', 'products', Product.cache_key] do
      ....
    end


I recommend that you use this sparingly as it is NOT an efficient way of cache expiration!


## Installation

Add this line to your application's Gemfile:

    gem 'activerecord-class-cache'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-class-cache

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/activerecord-class-cache/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

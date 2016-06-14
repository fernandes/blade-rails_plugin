# Blade::RailsPlugin

Out of the box integration between Blade and Rails

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blade-rails_plugin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blade-rails_plugin

## Usage

Add the plugin on `.blade.yml`

```yaml
plugins:
  rails:
    enabled: true
```

For more information on how it works, or the motivation behind this gem, check the [article](http://www.coding.com.br/rails/using-blade-javascript-runner-on-rails) I wrote and originated this one.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fernandes/blade-rails_plugin.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


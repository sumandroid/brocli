# Brocli
Welcome to the world of ruby, Brocli is a command line based ruby gem to benchmark your HTTP GET requests. It's still under development and I will be expanding it to cover API requests and some POST requests as well. Follow the step to step guide to install the gem and get it running or just clone/download the code and tweak it yourself.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'brocli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install brocli

## Usage

Write the following command anywhere in your command line:
    
    $ brocli hit
    
The above command will hit the default url which is 'https://www.gitlab.com' for 1 minute every 10 seconds.

If you want to hit some other URL just write the following command

    $ brocli hit 'www.xyz.com' 60 10
 
the last two numbers are the total_time_duration and time_interval for the HTTP hit you can provide these value as they suit you.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sumandroid/brocli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Brocli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/brocli/blob/master/CODE_OF_CONDUCT.md).

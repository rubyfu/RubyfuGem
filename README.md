# Rubyfu *the gem*
Rubyfu gem is a simple way to run and read Rubyfu book offline as it is online. This gem should be continuously updated as the online version gets updated, but it's not instantly syncing.

## How it works ?
Well, the gem contains and HTML version of the book and it uses `watir-webdriver` gem to open the html file which gets served by `Webrick` ruby web server. So the webserver will serve the book, the browser will open it on the localhost.

## How to use Rubyfu gem?

- **Install rubyfu gem**

```
gem install rubyfu
```

- **Usage**
You can simply just run it from your command-line
```
rubyfu
```

Or use more options 
```
rubyfu -h
```
example

```
rubyfu -b firefox -p 9911
```

# How to contribute
There are several things that can be enhanced or contributed with,
## Updating the offline contents (super-easy)

1. Fork then clone the **Rubyfu book** repository
```
git clone https://github.com/[YOURUSER]/RubyFu.git
```
2. Generate/Build and HTML
```
cd Rubyfu
gitbook install
gitbook build 
```
This will generate a folder named `_book` contains HTML version of the book
3. Fork then clone the **Rubyfu gem** repository
```
git clone https://github.com/[YOURUSER]/RubyfuGem.git
```
4. Paste the generate HTML book (`_book`) folder in `rubyfu/_book` gem directory, then push it
```
cp -a _book ../RubyfuGem/
```

5. Crate a new pull request (PR)

Done!

## Enhancing how the gem applicatin is working 





Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/rubyfu`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubyfu'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubyfu

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rubyfu.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


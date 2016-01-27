# Rubyfu, the gem
Rubyfu gem is a simple way to run and read Rubyfu book offline as it is online. This gem should be continuously updated as the online version gets updated, but it's not instantly syncing.

## How it works?
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

Usage: rubyfu [OPTIONS]
Help menu:
    -p, --port NUM                   Port to listen on. Default 9911
    -h, --help                       Show the full help screen.

Examples:
    rubyfu
    rubyfu --port 9911
```

example

```
rubyfu -p 9911
```

## How to contribute
There are several things that can be enhanced or contributed with,
### Updating the offline contents (super-easy)

1. Fork then clone the **Rubyfu book** repository

```
git clone https://github.com/[YOURUSER]/RubyFu.git
```

2. Generate/Build an HTML

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

4. Paste the generated HTML book (`_book`) folder in `rubyfu/_book` gem directory, then push it

```
cp -a _book ../RubyfuGem/
```

5. Crate a new pull request (PR) to https://github.com/rubyfu/RubyfuGem/

To report any issue, please refere to [issues](https://github.com/rubyfu/RubyfuGem/issues)
Done!

### Enhancing how the gem application is working 
Currently, the gem misses and important mission which is the syncronization between the webrick and browser process so if you clos the browser, the webrick will keep working in the background.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


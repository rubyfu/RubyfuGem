
$LOAD_PATH.unshift File.expand_path('rubyfu')
puts $:
puts File.exist? File.expand_path('rubyfu/version.rb')


require 'rubyfu/version'
require 'webrick'
require 'watir-webdriver'
require 'rubyfu/webServer'
require 'rubyfu/browse'



module Rubyfu 
#   
#   # A wrapper for WEBrick::HTTPServer class, it updates its default values 
#   class WebServer < WEBrick::HTTPServer
#     
#     def initialize(port)
#       config = {:Port         => port,        # Optional
#                 :DocumentRoot => '../_book',  # Don't change
#                 :ServerName   => 'Rubyfu',    # Don't change 
#                 :Logger       => WEBrick::Log.new(File.open(File::NULL, 'w')),  # Disable WEBRick server logging
#                 :AccessLog    => []           # Disable WEBRick server access logging
#                }
#       super(config)                           # Update WEBrick::HTTPServer @config instance
#     end
#     
#     def runit
#       # Start webrick
#       start
#     end
#     
#   end
  
#   #
#   # Browse class is awrapper fow watir gem
#   # 
#   class Browse
#     attr_accessor :run
#     
#     def initialize(agent, port)
#       
#       # Set Page load timeout
#       client = Selenium::WebDriver::Remote::Http::Default.new
#       client.timeout = 1
#       
#       # Browser Settings 
#       @port = port
#       @browser = Watir::Browser.new agent, :http_client => client
#       @browser.window.resize_to(1300, 950)
#       @browser.window.move_to(0, 0)
# #       screen_width  = (@browser.execute_script("return screen.width;")/2)
# #       screen_height = (@browser.execute_script("return screen.height;")/2)
# #       @browser.window.move_to(screen_height, screen_width)
#     end
#     
#     def run
#       @browser.goto "http://localhost:#{@port}"
#     end
#   end
#   
  class Service
    attr_accessor :port, :agent
#     rand(65000 - 1024) + 1024
    def initialize(config = {:port => 9911, :agent => :firefox})
      @port  = config[:port]
      @agent = config[:agent].to_sym
      @webserver = Rubyfu::WebServer.new(@port)
      @browser   = Browse.new(@agent, @port)
    end
    
    # A non-rubyfu way handle any webrick & watir processes TODO: Make webrick closes when firefox close
    def run
      fork do
        begin 
          @browser.run 
        rescue
          # Do nothin ;)
        end
      end
      Process.wait
      Process.detach fork { @webserver.runit}
    end
    
  end
  
end


service = Rubyfu::Service.new(port: 9911, agent: "firefox").run

# server = Rubyfu::WebServer.new.runit


















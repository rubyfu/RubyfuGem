=begin

#=> Rubyfu, the gem 

Author : Sabri Saleh | @KINGSABRI
Book   : http://Rubyfu.net

=end 

#
# Browse class is awrapper fow watir gem
# 
class Browse
  attr_accessor :run
  
  def initialize(agent, port)
    
    # Set Page load timeout
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout = 1
    
    # Browser Settings 
    @port = port
    @browser = Watir::Browser.new agent, :http_client => client
    @browser.window.resize_to(1300, 950)
    @browser.window.move_to(0, 0)
#       screen_width  = (@browser.execute_script("return screen.width;")/2)
#       screen_height = (@browser.execute_script("return screen.height;")/2)
#       @browser.window.move_to(screen_height, screen_width)
  end
  
  def run
    @browser.goto "http://localhost:#{@port}"
  end
end 

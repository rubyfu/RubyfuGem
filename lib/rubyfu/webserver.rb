=begin

#=> Rubyfu, the gem 

Author : Sabri Saleh | @KINGSABRI
Book   : http://Rubyfu.net

=end 
  
# A wrapper for WEBrick::HTTPServer class, it updates its default values 
class WebServer < WEBrick::HTTPServer
  
  def initialize(port)
    bookpath = "#{File.dirname(__FILE__)}/../../_book"
    config = {:Port         => port,        # Optional
              :DocumentRoot => bookpath,  # Don't change
              :ServerName   => 'Rubyfu',    # Don't change 
              :Logger       => WEBrick::Log.new(File.open(File::NULL, 'w')),  # Disable WEBRick server logging
              :AccessLog    => []           # Disable WEBRick server access logging
              }
    super(config)                           # Update WEBrick::HTTPServer @config instance
  end
  
  def runit
    # Start webrick
    start
  end
  
end


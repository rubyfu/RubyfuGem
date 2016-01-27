$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rubyfu/version'
require 'webrick'
require 'watir-webdriver'
require 'rubyfu/webserver'
require 'rubyfu/browse'

module Rubyfu 
  
  class Book
#     attr_accessor :port, :agent
#     rand(65000 - 1024) + 1024
    def initialize(config = {:port => 9911, :agent => :firefox})
      @port  = config[:port]
      @agent = config[:agent]
      @webserver = WebServer.new(@port)
      @browser   = Browse.new(@agent, @port)
    end
    
    # A non-rubyfu way handle any webrick & watir processes TODO: Make webrick close when the browser closes
    def run
      fork do
        begin 
          @browser.run 
        rescue
          # Do nothin ;)
        end
      end
      Process.wait
      Process.detach fork { @webserver.runit }
    end
    
  end
  
end

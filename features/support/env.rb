require 'test/unit/assertions'
include Test::Unit::Assertions
require 'watir-webdriver'

browser = Watir::Browser.new :firefox
# if ENV['SAFARIWATIR']
#   require 'safariwatir'
#   Browser = Watir::Safari
# else
#   case RUBY_PLATFORM
#   when /darwin/
#     require 'firewatir'
#     Browser = FireWatir::Firefox
#   when /win32|mingw/
#     require 'watir'
#     Browser = Watir::IE
#   when /java/
#     require 'celerity'
#     Browser = Celerity::Browser
#   else
#     raise "This platform is not supported (#{PLATFORM})"
#   end
# end
 
 
 # browser = Browser.new
 
 Before do
   @browser = browser
   @random = rand(9999999).to_s
   @environment = "http://www.spiceworks.com"
 end
 
 
 After do
   # @browser.close
 end
 


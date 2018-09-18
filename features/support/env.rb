require 'capybara'
require 'cucumber'
require 'selenium-webdriver'

Before do
    Selenium::WebDriver::Chrome.driver_path="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
    $driver = Selenium::WebDriver.for :chrome
end

Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.com.br"
Capybara.register_driver :selenium do |app| 
    Capybara::Selenium::Driver.new app, browser: :chrome
end
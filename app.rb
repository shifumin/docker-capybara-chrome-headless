# frozen_string_literal: true

require 'capybara'
require 'selenium-webdriver'

Capybara.configure do |capybara_config|
  capybara_config.default_driver = :selenium_chrome_headless
end

Capybara.register_driver :selenium_chrome_headless do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  options.add_argument('--disable-gpu')
  options.add_argument('--no-sandbox')
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.javascript_driver = :selenium_chrome_headless

@session = Capybara::Session.new(:selenium_chrome_headless)

# Please replace the example code below with your code.
@session.visit('https://www.yahoo.co.jp/')
sleep 5 # waiting for getting assets
@session.save_screenshot('./yahoo.png')

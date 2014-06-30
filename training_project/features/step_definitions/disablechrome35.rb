Given(/^I launch puppies site$/) do
  # http://stackoverflow.com/questions/23771922/protractor-error-message-unsupported-command-line-flag-in-chrome/24231337#24231337
  # caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => ["test-type","whitelisted-ips=127.0.0.1" ]})
  #localcaps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => ["test-type" ]})
  @browser = Selenium::WebDriver.for :chrome
  #@browser =  Selenium::WebDriver.for :remote, :url => "http://192.168.211.1:4444/wd/hub",:desired_capabilities => caps
  @browser.navigate.to "http://puppies.herokuapp.com"
end

And(/^view details for "([^"]*)"$/) do |arg|
  @browser.find_elements(:class,'rounded_button')[0].click
end

Then(/^I close the browser$/) do
  # @browser.quit
  p "closed"
end


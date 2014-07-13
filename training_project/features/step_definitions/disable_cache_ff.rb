Then(/^I disable the cache$/) do
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['browser.cache.disk.enable'] = false
  @browser1 = Selenium::WebDriver.for :firefox, :profile => profile

  @browser1.navigate.to "http://www.google.com"
  @browser1.quit
end
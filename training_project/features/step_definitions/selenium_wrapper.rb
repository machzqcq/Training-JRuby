When(/^I navigate to "([^"]*)"$/) do |url|
   @googledriver = Selenium::WebDriver.for :firefox, listener: GoogleWrapper.new
   @googledriver.get url
end

Then(/^I use the abstract event listener class created methods$/) do
  @driver.get 'http://the-internet.herokuapp.com'
  @driver.find_elements(css: 'a').last.click
  @driver.quit
end

When(/^I navigate to internet herokupapp$/) do
  @driver = Selenium::WebDriver.for :firefox, listener: Wrapper.new
end

Then(/^I use the google abstract event listener class created methods$/) do
  @googledriver.find_elements(:tag_name => 'a').first.click
  @googledriver.quit
end
When(/^I open a website using selenium with phantomjs$/) do
  @phantomjs_driver = Selenium::WebDriver.for(:remote, :url => "http://localhost:9134")
  @phantomjs_driver.navigate.to "http://google.com"
end

Then(/^I print the title for the website$/) do
  element = @phantomjs_driver.find_element(:name, 'q')
  element.send_keys "PhantomJS"
  element.submit
  puts @phantomjs_driver.title
  @phantomjs_driver.quit
end
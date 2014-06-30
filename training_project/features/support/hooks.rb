
require 'selenium-webdriver'


Before do

  @browser = Selenium::WebDriver.for :firefox

end


After do
  @browser.close
end
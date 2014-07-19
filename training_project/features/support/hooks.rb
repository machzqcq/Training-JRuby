
require 'selenium-webdriver'


Before do

  @browser = Selenium::WebDriver.for :firefox

end


After do
  @browser.close
end

# The Before block above will execute for every scenario
Before('@Tagie') do

  @browser = Selenium::WebDriver.for :ie

end


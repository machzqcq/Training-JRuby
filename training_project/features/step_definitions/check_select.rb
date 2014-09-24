And(/^I click adopt me$/) do
  @browser.find_element(:class => 'rounded_button').click
end

And(/^I check box for collar$/) do
  @browser.find_element(:id => 'collar').click
end

Then(/^I complete the adoption$/) do
  @browser.find_element(:class => 'rounded_button').click
end


Then(/^I click popular cards checkbox$/) do
  @browser.find_element(:id => 'cb-popular').click
end

Then(/^I click excellent credit radio button$/) do
  @browser.find_element(:id => 'rb-excellent').click
end

And(/^I select "([^"]*)" text from select box$/) do |arg|
  dropdown = @browser.find_element(:id => 'dropdown')
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:text, arg)
end


When(/^I open the internet website with dropdown$/) do
  @browser.navigate.to "http://the-internet.herokuapp.com/dropdown"
end

And(/^I select "([^"]*)" value from select box$/) do |arg|
  dropdown = @browser.find_element(:id => 'dropdown')
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:value, arg.to_s)
end
And(/^I click adopt me$/) do
  @browser.find_element(:class => 'rounded_button').click
end

And(/^I check box for collar$/) do
  @browser.find_element(:id => 'collar').click
end

Then(/^I complete the adoption$/) do
  @browser.find_element(:class => 'rounded_button').click
end

Then(/^I select "([^"]*)" in select box by text$/) do |arg|
  order_pay_type = @browser.find_element(:id => 'order_pay_type')
  pay_type_select_list = Selenium::WebDriver::Support::Select.new(order_pay_type)
  pay_type_select_list.select_by(:text, arg)
end

Then(/^I select "([^"]*)" in select box by value$/) do |arg|
  order_pay_type = @browser.find_element(:id => 'order_pay_type')
  pay_type_select_list = Selenium::WebDriver::Support::Select.new(order_pay_type)
  pay_type_select_list.select_by(:value, arg)
end
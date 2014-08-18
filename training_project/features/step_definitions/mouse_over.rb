Then(/^I hover over credit cards$/) do
  # A known issue with hover is to have the mouse pointer away from the browser screen area
  @browser.manage.window.maximize
  credit_card_element = @browser.find_element(:id => 'nav-primary-cc')
  @browser.mouse.move_to credit_card_element
end

Then(/^I hover over credit cards using perform$/) do
  @browser.manage.window.maximize
  credit_card_element = @browser.find_element(:id => 'nav-primary-cc')
  @browser.action.move_to(credit_card_element).perform
end

Then(/^I hover over credit cards and click browse cards$/) do
  # A known issue with hover is to have the mouse pointer away from the browser screen area
  @browser.manage.window.maximize
  credit_card_element = @browser.find_element(:id => 'nav-primary-cc')
  @browser.mouse.move_to credit_card_element
  sleep 5
  @browser.find_element(:link_text => 'Browse All Cards').click
end

And(/^I verify the page-heading to be "([^"]*)"$/) do |arg|
  actual_title = @browser.find_element(:id => 'page-heading').text
  expected_title = arg
  expect(actual_title).should match expected_title
end
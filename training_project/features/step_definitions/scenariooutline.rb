Then(/^I click view details for puppy indexed "([^"]*)"$/) do |index|
  view_details_buttons = @browser.find_elements(:class => 'rounded_button')
  view_details_buttons[index.to_i].click
end

Then(/^I click view details for puppy "([^"]*)"$/) do |puppy_name|
  puppynames = @browser.find_elements(:class => 'name')
  brook_index = puppynames.find_index { |name| name.text == puppy_name}
  view_details_buttons = @browser.find_elements(:class => 'rounded_button')
  view_details_buttons[brook_index.to_i].click
end
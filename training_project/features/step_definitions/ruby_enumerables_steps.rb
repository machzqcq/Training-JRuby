Then(/^I click view "([^"]*)" view details$/) do |arg|
    puppynames = @browser.find_elements(:class => 'name')
    brook_index = puppynames.find_index { |name| name.text == arg}
    view_details_buttons = @browser.find_elements(:class => 'rounded_button')
    view_details_buttons[brook_index.to_i].click
end
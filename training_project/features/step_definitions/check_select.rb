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
When(/^I open the puppies website$/) do
  @browser.navigate.to ("http://puppies.herokuapp.com")
end




Then(/^I click view details button for Brook$/) do
  view_details_buttons = @browser.find_elements(:class => 'rounded_button')
  view_details_buttons[0].click
end

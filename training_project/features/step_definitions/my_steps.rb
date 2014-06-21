When(/^I open the puppies website$/) do
  @browser.navigate.to ("http://puppies.herokuapp.com")
  sleep 10
end

Then(/^I print the title$/) do
  puts @browser.title
end

Then(/^I expect the title to be "([^"]*)"$/) do |arg|
  actualTitle = @browser.title
  expectedTitle = arg
  expect(actualTitle).to eq(expectedTitle)
end
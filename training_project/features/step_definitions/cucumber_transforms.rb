When(/^I pass "([^"]*)" to the step definitions$/) do |arg|
  @number1 = arg
end

Then(/^I the string value is transformed to integer by transformations$/) do
  sum = @number1 + 2
  p "Sum is #{sum}"
end


When(/^I pass dollar sign "([^"]*)" to step definitions$/) do |arg|
  puts arg
end
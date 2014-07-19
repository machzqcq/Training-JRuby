When(/^I open "([^"]*)" website$/) do |url|
  ENV['base_url'] = 'http://www.google.com'
  @google_page = GoogleSearch.new(@browser)
end

And(/^I search for "([^"]*)"$/) do |arg|
  @google_page.search_for 'pradeep@seleniumframework.com'
end

Then(/^I should get some results$/) do
  result = @google_page.search_result_present? 'Pradeep K. Macharla'
  result.should == true
end
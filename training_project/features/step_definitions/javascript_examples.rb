Then(/^I print window location pathname$/) do
  puts @browser.execute_script("return window.location.pathname")
end

Then(/^I print the document text$/) do
  element = @browser.execute_script("return document.body")
  puts element.text
end

Then(/^I print the window title$/) do
  puts @browser.execute_script("return window.document.title")
end
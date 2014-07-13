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

When(/^I load jquery framework$/) do
  @browser.navigate.to "http://www.google.com"
  dir_to_jquery = Dir.pwd + '/features/support/datafiles'

  # read file contents into a String
  jquerystring = File.open("#{dir_to_jquery}/jQuerify.js").read

  #Give time for script to load and inject jquery library dynamically
  @browser.manage.timeouts.script_timeout = 10
  @browser.execute_async_script(jquerystring)

end

Then(/^I execute a jquery function on the website$/) do
  @browser.execute_script("jQuery(function($) { " +" $('input[name=\"q\"]').val('pradeep@seleniumframework.com').closest('form').submit(); " +" }); ");
end
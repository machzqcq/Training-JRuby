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
  # See seleniumwrapper.feature where there is an easier way to load js libraries ;)
  @browser.navigate.to "http://www.google.com"
  dir_to_jquery = Dir.pwd + '/features/support/ajax_resources'

  # read file contents into a String
  jquerystring = File.open("#{dir_to_jquery}/jQuerify.js").read

  #Give time for script to load and inject jquery library dynamically
  @browser.manage.timeouts.script_timeout = 10
  @browser.execute_async_script(jquerystring)

end

Then(/^I execute a jquery function on the website$/) do
  @browser.execute_script("jQuery(function($) { " +" $('input[name=\"q\"]').val('pradeep@seleniumframework.com').closest('form').submit(); " +" }); ");
end

Then(/^I wait for jquery ajax calls to complete and progress$/) do
  # if jQuery.active ==0 , then all ajax calls are done on page. If non-zero, then we need to wait

  max_time_wait = Time.now + 30
  until Time.now > max_time_wait
    break if @browser.execute_script("return jQuery.active") == 0
    sleep 0.5
  end
end

When(/^I load prototype framework$/) do
  @browser.navigate.to "http://www.google.com"
  dir_to_jquery = Dir.pwd + '/features/support/ajax_resources'

  # read file contents into a String
  prototypestring = File.open("#{dir_to_jquery}/prototype.js").read

  #Give time for script to load and inject jquery library dynamically
  @browser.manage.timeouts.script_timeout = 10
  @browser.execute_async_script(prototypestring)
end

Then(/^I wait for prototype ajax calls to complete and progress$/) do
  # if return Ajax.activeRequestCount == 0 , then all ajax calls are done on page. If non-zero, then we need to wait

  max_time_wait = Time.now + 30
  until Time.now > max_time_wait
    break if @browser.execute_script("return Ajax.activeRequestCount") == 0
    sleep 0.5
  end
end

When(/^I load yui framework$/) do
  # We are assuming yui gets loaded into browser when we hit the application -- http://yui.github.io/yuicompressor/
  @browser.navigate.to "http://www.google.com"
end

Then(/^I wait for yui ajax calls to complete and progress$/) do
   # return the # of pending ajax requests
  max_time_wait = Time.now + 30
  until Time.now > max_time_wait
    break if @browser.execute_script("var inProgress=0 for(var i=0; i < YAHOO.util.Connect._transaction_id; i++) {if(YAHOO.util.Connect.isCallInProgress(i)) inProgress++;} return inProgress;") == 0
    sleep 0.5
  end

end
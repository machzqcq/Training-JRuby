And(/^I open a new tab in browser$/) do
  body = @browser.find_element(:tag_name => 'body')
  body.send_keys(:control, 't')
end

Then(/^I open stackoverflow website and print title$/) do
  p "total number of windows"
  p @browser.window_handles.length
  p "printing window ids"
  @browser.window_handles.each do  |window|
    p  window
  end
  p "opening stackoverflow"
  @browser.navigate.to "http://www.stackoverflow.com"
  p @browser.title
end
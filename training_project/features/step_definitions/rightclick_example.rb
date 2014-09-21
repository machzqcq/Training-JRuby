When(/^I open context menu$/) do
  @browser1 = Selenium::WebDriver.for :firefox
  @browser1.navigate.to 'http://the-internet.herokuapp.com/context_menu'
  @menu_area = @browser1.find_element id: 'hot-spot'
end

Then(/^I right click on menu area$/) do
  @browser1.action.context_click(@menu_area).send_keys(:arrow_down).send_keys(:enter).perform
  alert = @browser1.switch_to.alert
  expect(alert.text).to eq('You selected a context menu')
  @browser1.quit
end
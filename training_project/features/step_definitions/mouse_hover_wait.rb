When(/^I navigate to elemental selenium website$/) do
  @browser.navigate.to "http://the-internet.herokuapp.com/hovers"
end

And(/^I hover over avatar$/) do
  avatar = @browser.find_element(class: 'figure')
  @browser.action.move_to(avatar).perform
end

Then(/^I wait for caption to appear before progressing$/) do
  Selenium::WebDriver::Wait.new(timeout: 2).until do
    @browser.find_element(class: 'figcaption').displayed?
  end
  user_url = @browser.find_element(css: '.figcaption > a').attribute('href')
  expect(user_url).to eq('http://the-internet.herokuapp.com/users/1')
end


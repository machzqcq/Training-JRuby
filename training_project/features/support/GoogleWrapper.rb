require 'selenium-webdriver'
class GoogleWrapper < Selenium::WebDriver::Support::AbstractEventListener

  def after_navigate_to(url, driver)
    display_growl(driver, "Navigated to #{url}")
  end

  def before_find(by, what, driver)
    display_growl(driver, "Finding element #{what}")
  end

  def after_find(by, what, driver)
    display_growl(driver, "Found element #{what}")
  end

  def before_click(element, driver)
    display_growl(driver, "Clicking on #{element.text}")
    @pre_click_url = driver.current_url
  end

  def after_click(element, driver)
    unless @pre_click_url == driver.current_url
      display_growl(driver, "URL changed to #{driver.current_url}")
    end
  end

  private

  def display_growl(driver, message)
    p "#{message}"
    sleep 0.5
  end

end
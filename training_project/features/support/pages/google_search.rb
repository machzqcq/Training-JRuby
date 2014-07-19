class GoogleSearch

  SEARCH_BOX        = { id: 'gbqfq'     }
  SEARCH_BOX_SUBMIT = { id: 'gbqfb'     }
  TOP_SEARCH_RESULT = { css: '#rso .g'  }

  attr_reader :driver

  def initialize(driver)
    @driver = driver
    visit
    verify_page
  end

  def visit
    driver.get ENV['base_url']
  end

  def search_for(search_term)
    driver.find_element(SEARCH_BOX).clear
    driver.find_element(SEARCH_BOX).send_keys search_term
    driver.find_element(SEARCH_BOX_SUBMIT).click
  end

  def search_result_present?(search_result)
    wait_for { displayed?(TOP_SEARCH_RESULT) }
    p "search result --> #{driver.find_element(TOP_SEARCH_RESULT).text}"
    driver.find_element(TOP_SEARCH_RESULT).text.include? search_result
  end

  private

  def verify_page
    driver.title.include?('Google').should == true
  end

  def wait_for(seconds=5)
    Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
  end

  def displayed?(locator)
    driver.find_element(locator).displayed?
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end

end
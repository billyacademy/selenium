require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://twitter.com"

about_xpath = '//*[@id="front-container"]/div[4]/ul/li[1]/a'

result = driver.find_element(:xpath , about_xpath)
result.click

puts "Test Passed: Page 1 Validated" if
  /About Twitter/.match(driver.page_source)
puts "Negative Test Passed: Page 1 Negative Test" if
  !/About Reddit/.match(driver.page_source)

driver.quit

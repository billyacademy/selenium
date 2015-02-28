require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://twitter.com"
about_xpath = '//*[@id="front-container"]/div[4]/ul/li[1]/a'

result = driver.find_element(:xpath , about_xpath)
result.click
puts driver.title

driver.quit

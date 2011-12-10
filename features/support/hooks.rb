require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :firefox
end

After do
  @browser.driver.save_screenshot 'screenshot.png'
  embed 'screenshot.png', 'image/png'
  @browser.close
end
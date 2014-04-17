require 'watir-webdriver'

if ENV['HEADLESS']
  require 'headless'
  headless = Headless.new
  headless.start
  browser = Watir::Browser.new
  at_exit do
    headless.destroy
  end
else

  browser = Watir::Browser.new :ff
  browser.driver.manage.window.maximize

  at_exit do
    browser.close
  end
end

Before do
  @browser = browser
end
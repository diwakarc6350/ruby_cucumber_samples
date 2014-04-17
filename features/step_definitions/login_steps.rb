Given(/^I am on the login page$/) do
  visit_page LoginPage
end

When(/^I type (.*) and (.*)$/) do |username, password|
  on_page LoginPage do |login_page|
    login_page.login_as(username, password)
  end
end

Then(/^I should have accces to the system$/) do
  sleep 3
end



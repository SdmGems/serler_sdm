#module KnowsSession
#   def getUserSession
#     session = Capybara::Session.new(:rack_test, "a")
#     session.visit("/")
 #    session.current_host
  # end
#end

#World(KnowsSession)

When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the signup$/) do
  expect(page).to have_content("Sign Up")
end

Then(/^I should see Email$/) do
  expect(page).to have_content("Email")
end

And(/^I should see password$/) do
  expect(page).to have_content("Password")
end

And(/^I should see log in button$/) do
  expect(page).to have_content("Log in")
end

When(/^I fill in email$/) do
  fill_in('visitor_email', :with =>"abc@abc.com")
end

And(/^I fill in password$/) do
  fill_in('visitor_password', :with =>"000000")
end

And(/^I click on log in$/) do
  click_button('Log in')
end

#Then(/^I should see submitted articles$/) do
#  expect(page).to have_content("View Submitted Articles")
#end

Given(/^I am in the page of signup$/) do
 visit "/visitors/sign_in"
end


Given(/^I am a visitor$/) do
    current_driver = Capybara.current_driver
  begin
    Capybara.current_driver = :rack_test
    page.driver.submit :delete, "/sessions/destroy", {}
  ensure
    Capybara.current_driver = current_driver
  end
end

Given(/^I click on submit$/) do
  click_link('Submit')
end

Given(/^I should be redirected to login page$/) do
  visit "/visitors/sign_in"
end

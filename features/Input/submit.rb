Given(/^I'm logged in as a registered user$/) do
   current_driver = Capybara.current_driver
  begin
    Capybara.current_driver = :rack_test
    page.driver.submit :delete, "/sessions/destroy", {}
  ensure
    Capybara.current_driver = current_driver
  visit root_path
  fill_in('visitor_email', :with =>"wilfrid@123.com")
  fill_in('visitor_password', :with =>"123456")
  click_button('Log in')
  end
end

 And(/^I click New button$/) do
    visit "/paperpost/show"
 	click_button 'New'
 	expect(page).to have_content('Title')
 end
 
 When(/^I type specific information and click publish$/) do
 
   fill_in 'Username', with: 'huxu'
   fill_in 'Author', with: 'wilfrid'
   fill_in 'Title', with: 'software development method'
   fill_in 'Description', with: 'serler'
   fill_in 'Publishername', with: 'jim'
   fill_in 'Pages', with: '1'
   fill_in 'Volume', with: '1'
   click_button 'publish'	
 end

#  Then(/^we will on the list of submission page$/) do
#  end
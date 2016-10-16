Given(/^I'm logged in as a registered user$/) do
   @user = User.create!({
    email: "wilfrid@123.com", password: "123456", password_confirmation: "123456",
    # reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1,
    # current_sign_in_at: "2015-02-06 14:02:10", last_sign_in_at: "2015-02-06 14:02:10",
    # current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", roles_mask: 1,
    first_name: "Fistname", last_name: "Lastname",
  })
  @user.save!
  visit new_visitor_session_path
  expect(page).to have_content('Log in')
end
 
 And(/^I click New button$/) do
 	click_button 'New'
 	expect(page).to have_content('Title')
 end
 
 When(/^I type specific information and click publish$/) do
 
#   click_button 'add-author'	
   fill_in 'Username', with: 'huxu'
   fill_in 'Author', with: 'wilfrid'
   fill_in 'Title', with: 'software development method'
   fill_in 'Description', with: 'serler'
   fill_in 'Publishername', with: 'jim'
   fill_in 'Pages', with: '1'
   fill_in 'Volume', with: '1'
#   fill_in 'Issue number', with: 4
#   fill_in 'Page', with: '274a-274a'
#   fill_in 'Doi', with: '10.1109/AGILE.2009.18'
   click_button 'publish'	
 end
 
 Then(/^we will on the list of submission page$/) do
 end
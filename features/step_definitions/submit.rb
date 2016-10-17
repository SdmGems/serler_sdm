Given(/^I am logged in$/) do
    current_driver = Capybara.current_driver
  begin
    Capybara.current_driver = :rack_test
    page.driver.submit :delete, "/sessions/destroy", {}
  ensure
    Capybara.current_driver = current_driver
  end
  visit root_path
  fill_in('visitor_email', :with =>"abc@abc.com")
  fill_in('visitor_password', :with =>"000000")
  click_button('Log in')
end

When(/^I click new button$/) do
    click_link('New')
end

Then(/^I should be able to fill in the fields for books$/) do
  fill_in('Username', :with =>"abc@abc.com")
  select("Books", :from =>'paperpost_articlecategory')
  fill_in('Author', :with =>"flora")
  fill_in('Title', :with =>"unhappy")
  fill_in('Description', :with =>"hahaha")
  fill_in('Publishername', :with =>"floooooo")
  fill_in('Pages', :with =>"100")
  fill_in('Volume', :with =>"5")
  fill_in('paperpost_publish_date', :with =>"20150505")
  fill_in('paperpost_submitted_date', :with =>"20161017")
  click_on('draft')
end

Then(/^I should be able to fill in the fields for articles$/) do
  fill_in('Username', :with =>"abc@abc.com")
  select("Articles", :from =>'paperpost_articlecategory')
  fill_in('Author', :with =>"flora")
  fill_in('Title', :with =>"unhappy")
#  fill_in('journalname', :with =>"journal")
  fill_in('Description', :with =>"hahaha")
  fill_in('Publishername', :with =>"floooooo")
  fill_in('Pages', :with =>"100")
  fill_in('Volume', :with =>"5")
  fill_in('paperpost_publish_date', :with =>"20150505")
  fill_in('paperpost_submitted_date', :with =>"20161017")
  click_on('draft')
end

Then(/^I should be able to fill in the fields for magazines$/) do
  fill_in('Username', :with =>"abc@abc.com")
  select("Magazines", :from =>'paperpost_articlecategory')
  fill_in('Author', :with =>"flora")
  fill_in('Title', :with =>"unhappy")
  fill_in('Description', :with =>"hahaha")
  fill_in('Publishername', :with =>"floooooo")
  fill_in('Pages', :with =>"100")
  fill_in('Volume', :with =>"5")
  fill_in('paperpost_publish_date', :with =>"20150505")
  fill_in('paperpost_submitted_date', :with =>"20161017")
  click_on('draft')
end

Then(/^I should be able to view draft$/) do
  visit "/paperposts/1"
  click_on('View Draft')
  within("#paperpost_username") do
      page.should have_content("abc@abc.com")
  end
end

Then(/^I should be able to publish$/) do
  fill_in('Username', :with =>"abc@abc.com")
  select("Magazines", :from =>'paperpost_articlecategory')
  fill_in('Author', :with =>"flora")
  fill_in('Title', :with =>"unhappy")
  fill_in('Description', :with =>"hahaha")
  fill_in('Publishername', :with =>"floooooo")
  fill_in('Pages', :with =>"100")
  fill_in('Volume', :with =>"5")
  fill_in('paperpost_publish_date', :with =>"20150505")
  fill_in('paperpost_submitted_date', :with =>"20161017")
  click_on('publish')
end
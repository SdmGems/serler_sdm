When(/^I go to the analyst page$/) do
  visit "/analysts/new"
end

Then(/^I should see the New$/) do
  expect(page).to have_content("New")
end

When(/^I click the new button$/) do
  click_on('New')
end

Then(/^I should see information entry page$/) do
  visit "/analysts/new"
end

Then(/^I should be able to enter information$/) do
  select("Experiment", :from =>'research_method')
  select("Survey", :from =>'reseach_participants')
  fill_in('analyst_benefit_from_test', :with =>"good")
  fill_in('analyst_context', :with =>"hahaha")
  fill_in('analyst_result', :with =>"no result")
  select("Agile", :from =>'se_methodology')
  select("Story boards", :from =>'se_method')
end

Then(/^I should be able to save as draft$/) do
  click_on('save')
end
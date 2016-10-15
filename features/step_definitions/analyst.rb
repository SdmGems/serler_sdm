When(/^I go to the analyst page$/) do
  visit "/analysts/new"
end

Then(/^I should see the New$/) do
  expect(page).to have_content("New")
end
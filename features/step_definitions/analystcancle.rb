When(/^I go to the analystnew page$/) do
  visit "/analysts/new"
end

Then(/^I should see the Cancel$/) do
  expect(page).to have_content("Cancel")
end
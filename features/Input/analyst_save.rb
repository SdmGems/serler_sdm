Given(/^I'm on analyst page$/) do
  visit "/analysts/new"
  
end

When(/^I fill in blanks and click save$/) do
    
    fill_in 'Benefit from test',with:'good'
    fill_in 'Context',with:'good'
    fill_in 'Result',with:'good'
    click_button 'save'
end

Then(/^I should see Analyst was successfully created$/) do
    expect(page).to have_content("Analyst was successfully created")
end

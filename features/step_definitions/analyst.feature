Feature: analyst test
As a analyst
I want to analyse papers and enter the information for each article 
So that useres can use the information


Background: analyst should see new button 
  When I go to the analyst page
  Then I should see the New

Scenario: analyst should be able to input information
  When I click the new button
#  Then I should see information entry page
#  And I should be able to enter information
#  And I should be able to save as draft

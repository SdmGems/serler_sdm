Feature: submit new evidence source
   As a registered user
   I want to be able to submit an article to the repository
 
Background:
#   Given I'm logged in as a registered user
  And I click New button

Scenario: add an article
   When I type specific Title year and click publish
   Then we will on the list of submission pagea
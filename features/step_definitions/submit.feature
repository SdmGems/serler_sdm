Feature: submit test
As a registered user 
I want to be able to submit an article to the repository 
so that the repository is kept up-to-date. 

Background:
  Given I am logged in
 
Scenario: User should be able to insert information and save as draft or publish
  When I click new button
#  Then I should be able to fill in the fields for books
#  And I should be able to fill in the fields for articles
#  And I should be able to fill in the fields for magazines
#  Then I should be able to view draft
  

Scenario: User should be able to publish
  When I click new button
#  Then I should be able to fill in the fields for books
#  And I should be able to publish
Feature: Login Test
As a returning registered user 
I want to be able to logon to the system 
so that I have access to the features appropriate to my role.

Scenario: User sees the login page and signup button
When I go to the homepage
Then I should see the signup

Scenario: User sees email and password and login button
   When I go to the homepage
   Then I should see Email
   And I should see password
   And I should see log in button

Scenario: User logs in
  Given I am in the page of signup
  When I fill in email
  And I fill in password
  And I click on log in
  Then I should see submitted articles
  

Scenario: Visitor is redirected to login page when they submit
Given I am a visitor
When I click on submit
Then I should be redirected to login page

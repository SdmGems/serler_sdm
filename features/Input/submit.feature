Feature: submit an article
As a registered user
I want to be able to submit an article to the repository so that the repository is kept up-to-date

Background:
    Given I'm logged in as a user
    Given I'm on submit page
    Given fill in all the compulsory blanks
Scenario:submit an article
    When i press submit button
    Then the screen will put "submit success!"
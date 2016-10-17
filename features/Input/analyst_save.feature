Feature:Analyst save
  As an analyst I want to be able to save an evidence item
  
  Background:
    Given I'm on analyst page
    
  Scenario: Analyst save
    When I fill in blanks and click save
    Then I should see Analyst was successfully created
Feature: Users join the site
  In order to a user get greeted
  A developer
  Should create a login or register page that works

  Scenario: Users can login
    Given My name is "Humberto"
    And I am on home page
    And I am logged in
    Then I should see my name


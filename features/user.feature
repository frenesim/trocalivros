
Feature: Design and Build a Ruby on Rails web app using Behaviour Driven Development (BDD)
  In order to produce a web app at low cost and high speed
  A developer
  Should employ Ruby on Rails with Cucumber BDD tools

Feature: Users join the site
  In order to a user get greeted
  A developer
  Should create a login/register page that works

  Scenario: Users can login
    Given I am login
    When I am on "home page"
    And I have a "name"
    Then I should see my "name"
    But If I do not have a "name"
    Then I should see my "email"



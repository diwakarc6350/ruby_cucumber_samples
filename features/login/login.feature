Feature: Login to the JIRA System
  As a user, I would like to login to the JIRA system, so that I can create defects

  Background:
    Given I am on the login page

  Scenario Outline: Login as some user
    When I type <username> and <password>
    Then I should have accces to the system
    Examples:
    |username|password|
    |letmeintothesite  |apassword123|

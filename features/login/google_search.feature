Feature: Google Search
  As an Internet user, I would like to search google, so I can find information faster and be more productive

  Scenario Outline: Search for something
    Given I am on google search page
    When  I enter a <search_key>
    Then I should see the search results

  Examples:
    |search_key|
    |cucumber|
    |ruby|
    |watir|
    |pageobject|
#language: en

Feature: Convert currency
As an user 
I want to convert money
So that I can decide wether purchase it or not

Scenario: Compare dollar value
    Given that I am on UOL website
    When I access the economy session
    And I choose to convert real
    And I choose dollar to final currency
    And I fill in 4000 reais
    Then I should see 1000 dollars
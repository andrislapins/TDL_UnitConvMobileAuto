@history
Feature: As a user I want to check if my conversions have been saved fully in history

  @wip1
  Scenario: Checking saved data of Section: Length with conversion: Inch -> Centimeter
    Given Screen: "Area", From: "Are", To: "Square kilometer", Input: "1000", Result: "0.1"
    When Navigating to the "History" section
    And In the list I see "Area" with "Are" to "Square kilometer" item
    And I click this item
    Then I see the details of my previous search

  @wip2
  Scenario Outline: Checking saved data of Section: Length with conversion: Inch -> Centimeter
    Given Screen: "<screen_name>", From: "<base_type>", To: "<conversion_type>", Input: "<base_value>", Result: "<conversion_value>"
    When Navigating to the "History" section
    And In the list I see "<screen_name>" with "<base_type>" to "<conversion_type>" item
    And I click this item
    Then I see the details of my previous search
    Examples:
    | screen_name    | base_type | conversion_type  | base_value | conversion_value |
    | Length         | Inch      | Centimeter       | 8          | 20.32            |
    | Area           | Are       | Square kilometer | 1000       | 0.1              |
    | Magnetic field | Tesla     | Kilotesla        | 9996       | 9.996            |
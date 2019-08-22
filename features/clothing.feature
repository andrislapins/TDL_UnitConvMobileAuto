@clothing
Feature: As a user I want to see conversions from one size format to another for clothing

  @clothing_converter
  Scenario: U.S. to Europe conversion
    Given I am in the "Clothing and shoes" screen
    And I have "U.S." type as base size and "Europe" type as the converter
    And I have "Women's blouses" type as category
    Then I see "32" as my first base value
    And I see "40" as the first converted value
    # Examples:
    # | base_type | conversion_type | category        | base_value | convertion_value |
    # | U.S.      | Europe          | Women's blouses | 32         | 40               |
@clothing
Feature: As a user I want to see conversions from one size format to another for clothing

  @clothing_converter
  Scenario Outline: U.S. to Europe conversion
    Given I am in the "Clothing and shoes" screen
    And I have "<base_type>" type as base size and "<conversion_type>" type as the converter
    And I have "<category>" type as category
    Then I see "<base_value>" as my first base value
    And I see "<convertion_value>" as the first converted value
    Examples:
    | base_type | conversion_type | category        | base_value | convertion_value |
    | U.S.      | Europe          | Women's blouses | 32         | 40               |
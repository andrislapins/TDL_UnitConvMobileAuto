And(/^I have "(.*)" type as base size and "(.*)" type as the converter$/) do |base_type, conversion_type|
  step "I have selected \"#{base_type}\" as base size"
  step "I have selected \"#{conversion_type}\" as the conversion size"
end

And(/^I have selected "(.*)" as base size$/) do |type|
  @pages.clothing_screen.select_base_type type
  sleep 2
end

And(/^I have selected "(.*)" as the conversion size$/) do |type|
  @pages.clothing_screen.select_conversion_type type
  sleep 2
end

And(/^I have "(.*)" type as category$/) do |type|
  @pages.clothing_screen.select_clothing_type type
end

Then(/^I see "(.*)" as my first base value$/) do |first_base_value|
  expect(@pages.clothing_screen.base_section_text).to eql first_base_value
end

And(/^I see "(.*)" as the first converted value$/) do |first_converted_value|
  expect(@pages.clothing_screen.conversion_section_text).to eql first_converted_value
end

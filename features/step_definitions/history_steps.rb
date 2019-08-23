Given(/^Screen: "(.*)", From: "(.*)", To: "(.*)", Input: "(.*)", Result: "(.*)"$/) do |screen_name, base_type, conversion_type, input, result|
  step "I am in the \"#{screen_name}\" screen"
  step "I have selected \"#{base_type}\" as base type"
  step "I have selected \"#{conversion_type}\" as the conversion type"
  step "I enter \"#{input}\" on the keyboard"
  step "I see \"#{result}\" in the conversion section"

  @saved_data = SavedConversionData.new(screen_name, base_type, conversion_type, input, result)
  sleep 1
end

When(/^Navigating to the "(.*)" section$/) do |history|
  step "I am in the \"#{history}\" screen"
  expect(@pages.history_screen.page_title_text).to eql history
  sleep 1
end

Then(/^In the list I see "(.*)" with "(.*)" to "(.*)" item$/) do |screen_name, base_type, conversion_type|
  expect(@pages.history_screen.screen_name_text).to eql @saved_data.screen_name
  expect(@pages.history_screen.base_type_text).to eql @saved_data.base_type
  expect(@pages.history_screen.conversion_type_text).to eql @saved_data.conversion_type
end

And(/^I click this item$/) do
  @pages.history_screen.click_item
end

Then(/^I see the details of my previous search$/) do
  expect(@pages.history_screen.page_title_text).to eql @saved_data.screen_name
  expect(@pages.history_screen.base_value_text).to eql @saved_data.base_value
  expect(@pages.history_screen.conversion_value_text).to eql @saved_data.conversion_value
  sleep 1
end

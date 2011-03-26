Given /I click the "(.*)" button/ do |type|
  find_button(type)
end

Given /I click the "(.*)" checkbox/ do |type|
  find_checkbox(type)
end

Given /I click the "(.*)" image/ do |type|
  find_image(type)
end

Given /I click the "(.*)" link/ do |type|
  find_link(type)
end

Given /I click the "(.*)" span/ do |type|
  find_span(type)
end

Given /I click the "(.*)" radio button/ do |type|
  find_radio_button(type)
end

Given /I select "(.*)" from "(.*)"/ do |text, type|
  find_select_list(text, type)
end

Given /I fill in the text field "(.*)" with "(.*)"/ do |type, text|
  find_text_field(type, text)
end

Given /I fill in the text field "(.*)" with random "(.*)"/ do |type, text|
  find_text_field_with_random(type, text)
end

Given /I click row "(.*)" in the "(.*)" table/ do |row, type|
  find_table(row, type)
end

Given /I upload "(.*)" to the "(.*)" file field/ do |file, type|
  find_file_field(file, type)
end

Then /^I should (NOT )?see the text "([^\"]*)"$/ do |visibility, text|
  expected = (visibility.to_s.strip == 'NOT') ? assert_false(@browser.contains_text(text)) : assert(@browser.contains_text(text))
end

Then /^I should (NOT )?see the exact text "([^\"]*)"$/ do |visibility, text|
  expected = (visibility.to_s.strip == 'NOT') ? assert_not_equal(@browser.contains_text(text), text) : assert_equal(@browser.contains_text(text))
end

Given /I am redirected to "(.*)"/ do |text|
  url = @browser.url
  assert_equal(@environment + text, url)
end

Given /^I am on (.+)$/ do |page_name| 
  @browser.goto(path_to(page_name))  #This step links up with the "path_to" method found in support/paths.rb
end

Given /^I go to "([^\"]*)"$/ do |url|
  @browser.goto(url)                 #Links to generic urls like "google.com"
end

Given /^I wait for "([^\"]*)" seconds$/ do |seconds|
  sleep seconds.to_i
end
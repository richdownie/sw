Feature: Contact Us

Background:
  * I am on the contact us page

Scenario: Sign up for newsletter
  * I click the "sign up for our newsletter" link
  * I fill in the text field "First Name" with "Rich"
  * I fill in the text field "Last Name" with "Downie"
  * I fill in the text field "Company" with "Spiceworks"
  * I fill in the text field "Email" with "rich@mail.com"
  * I click the "Third Party Offers" checkbox
  
Scenario: I verify contact information displays
  * I wait for "2" seconds
  * I should see the text "512.628.8200"
  * I should see the text "512.628.8280"
  * I should see the text "512.628.8205"
  
  * I should see the text "info@spiceworks.com"
  * I should see the text "advertise@spiceworks.com"
  * I should see the text "partner@spiceworks.com"
  * I should see the text "marketresearch@spiceworks.com"
  * I should see the text "support@spiceworks.com"
  
Scenario Outline: Select a language
  * I select <option> from "1"
  # * I select <option> from "goog-te-combo"
  
  Examples:
  | option       |
  | "Greek"      |
  | "Italian"    |
  | "English"    |
  

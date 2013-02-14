require 'C:\MyO2Calabash\features\Pages\sign_in_page'
require 'C:\MyO2Calabash\features\Pages\pin_page'

page_object = SignInPage.new

Given /^I am on the username and password screen$/ do
  wait_for_elements_exist(["New_TextViewEx marked:'Sign in to review your account.'"])
end

Given /^I am on the PIN screen$/ do
  wait_for_elements_exist(["New_TextViewEx marked:'Set a four digit PIN to keep your details safe'"])

end

When /^I enter my account credentials as username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  page_object.EnterCredentials(username , password)
end

And /^I attempt to sign in$/ do
  page_object.PressButton("Sign in")
  #sign_in.PressButtonWithIdentifier("id", "buttonOKSignIn")
  #sign_in.PressButtonWithClass("New_ButtonEx", "id", "buttonOKSignIn")
end

When /^I set my PIN to "([^"]*)"$/ do |pin|
  page_object = PinPage.new
  page_object.EnterPIN(pin)
end


sign_in_page = SignInPage.new

Given /^I am on the username and password screen$/ do
  wait_for_elements_exist(["New_TextViewEx marked:'Sign in to review your account.'"])
end

Given /^I am on the PIN screen$/ do
  wait_for_elements_exist(["New_TextViewEx marked:'Set a four digit PIN to keep your details safe'"])

end

When /^I enter my account credentials as username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  sign_in_page.enter_credentials(username , password)
end

And /^I attempt to sign in$/ do
  sign_in_page.press_button("Sign in")
end

When /^I set my PIN to "([^"]*)"$/ do |pin|
  pin_page = PinPage.new
  pin_page.enter_pin(pin)
end


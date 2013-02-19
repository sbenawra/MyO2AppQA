Given /^I am on the username and password screen$/ do
  @sign_in_page = SignInPage.new
end

When /^I enter my account credentials as username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  @sign_in_page.enter_credentials(username , password)
end

And /^I attempt to sign in successfully$/ do
  @pin_page = @sign_in_page.sign_in_successfully
end

When /^I set my PIN to "([^"]*)"$/ do |pin|
   @pin_page.enter_pin(pin)
end


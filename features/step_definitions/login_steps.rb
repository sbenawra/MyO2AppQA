=begin
Given /^I am on the username and password screen$/ do
  @sign_in_page = SignInPage.new
end
=end

Given /^I am on the username and password screen$/ do
  @page = page(SignInPage)
end

When /^I enter my account credentials as username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  @page = @page.enter_credentials(username, password)
end

And /^I attempt to sign in successfully$/ do
  @page = @page.sign_in_successfully
end

When /^I set my PIN to "([^"]*)"$/ do |pin|
  @page = @page.enter_pin(pin)
end

Given /^I am on the enter PIN page$/ do
  @page = page(EnterPinPage)
end

Given /^I am Logged in$/ do
  step %{I am on the username and password screen}
  step %{I enter my account credentials as username "root.boot" and password "test123"}
  step %{I attempt to sign in successfully}
  step %{I set my PIN to "1234"}
  step %{I should see the Menu Bar}
end



Given /^I am on the username and password screen$/ do
  @page = SignInPage.new
end

When /^I enter my account credentials as username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  @page = @page.enter_credentials(username, password)
end

And /^I attempt to sign in successfully$/ do
  @page = @page.sign_in_successfully
end

When /^I (?:set|enter) my PIN to "([^"]*)"$/ do |pin|
  @page = @page.enter_pin(pin)
end

Given /^I am on the enter PIN page$/ do
  start_test_server_in_background #This forcefully resets the App and ensure the enter pin page is shown
  @page = page(EnterPinPage)
end

Given /^I have logged in as "([^"]*)" with "([^"]*)" and setup my "([^"]*)"$/ do |username, password, pin|
  step %{I am on the username and password screen}
  step %{I enter my account credentials as username "#{username}" and password "#{password}"}
  step %{I attempt to sign in successfully}
  step %{I set my PIN to "#{pin}"}
  step %{I should see the Home page}
end



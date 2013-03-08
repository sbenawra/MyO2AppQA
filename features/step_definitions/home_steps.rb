Given /^I should see the Home page$/ do
  @page = page(HomePage)
end

Then /^I should see the latest bill widget containing the text "(.*)"$/ do |expected_text|
  @page.assert_latest_bill_widget_title(expected_text)
end

And /^I should see the latest bill cost as "(.*)"$/ do |expected_cost|
  @page.assert_latest_bill_cost(expected_cost)
end

And /^I should see the information message "(.*)"$/ do |expected_message|
  @page.assert_latest_bill_widget_footer(expected_message)
end

When /^I press the latest bill widget$/ do
  @page = @page.press_latest_bill_widget
end

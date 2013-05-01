When /^I should see the My allowances page$/ do
  @page = MyAllowancesPage.new
end

And /^I should see My tariff widget containing the title "([^"]*)"$/ do |expected_text|
  @page.assert_my_tariff_widget_title(expected_text)
end

And /^I press the My tariff widget$/ do
  @page.press_my_tariff_widget
end

When /^I press the Minutes widget$/ do
  @page.press_minutes_widget
end

Then /^I should see a minutes allowance for "([^"]*)"$/ do |expected_text|
  @page.assert_minutes_allowance_displayed(expected_text)
end
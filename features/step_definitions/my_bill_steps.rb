Then /^I should see the My Bill page$/ do
  @page = page(MyBillPage)
end

And /^I should see the latest bill details widget containing the text "([^"]*)" with cost "([^"]*)"$/ do |expected_text, expected_cost|
  @page.assert_latest_bill_widget_title(expected_text)
  @page.assert_latest_bill_cost(expected_cost)
end

And /^I should see You were billed on with date "([^"]*)"$/ do |expected_date|
  @page.assert_you_were_billed_on_text
  @page.assert_you_were_billed_on_date(expected_date)
end

And /^I should see Payment due on with date "([^"]*)"$/ do |expected_date|
  @page.assert_payment_due_on_text
  @page.assert_payment_due_on_date(expected_date)
end

And /^I should see Balance due as "([^"]*)"$/ do |expected_balance|
  @page.assert_balance_due_on_text
  @page.assert_balance_due_cost(expected_balance)
end

And /^I should see the information message "([^"]*)" in the latest bill details widget$/ do |expected_message|
  @page.assert_latest_bill_widget_footer(expected_message)
end


Then /^I should see the My Bill page$/ do
  #@page = page(MyBillPage)
  @page = MyBillPage.new
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

And /^I should see the Make a payment widget containing the message "([^"]*)"$/ do |expected_message|
  @page.assert_make_a_payment_widget_title
  @page.assert_make_a_payment_message(expected_message)
end

And /^I press the Make a payment widget$/ do
  @page.press_make_a_payment_widget
end

And /^I should see the Make a payment dialog containing the message "([^"]*)"$/ do |expected_message|
  @page.assert_make_a_payment_dialog_visible
  @page.assert_make_a_payment_message(expected_message)
end

And /^I press ok to make a payment$/ do
  @page.press_ok_button
end





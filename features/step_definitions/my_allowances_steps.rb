O2_TO_O2_MINUTES_MESSAGE = "We will use your O2 to O2 allowance first for O2 calls so that you can make the most use of your Anytime, any network minutes.\r\n\r\nAll UK calls will be updated within 12 hours."

When /^I should see the My allowances page$/ do
  @page = MyAllowancesPage.new
end

And /^I should see My tariff widget containing the text "([^"]*)"$/ do |expected_text|
  @page.assert_my_tariff_widget_title(expected_text)
end

And /^I press the My tariff widget$/ do
  @page.press_my_tariff_widget
end

When /^I press the Minutes widget$/ do
  @page.press_minutes_widget
end

Then /^I should see a minutes allowance for "([^"]*)"$/ do |expected_text|
  @page.assert_element_exists('New_TextViewEx', 'text', expected_text)
end

And /^I should see a O2 to O2 Allowance message stating "([^"]*)"$/ do |expected_text|
  if expected_text == "We will use your O2 to O2 allowance first for O2 calls so that you can make the most use of your Anytime, any network minutes. All UK calls will be updated within 12 hours."
    expected_text = O2_TO_O2_MINUTES_MESSAGE
  end
  @page.assert_element_exists('New_TextViewEx', 'text', expected_text)
end

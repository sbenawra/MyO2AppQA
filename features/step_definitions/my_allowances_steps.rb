When /^I should see the My allowances page$/ do
  #@page = page(MyAllowancesPage)
  @page = MyAllowancesPage.new
end

And /^I should see My tariff widget containing the text "([^"]*)"$/ do |expected_text|
  @page.assert_my_tariff_widget_title(expected_text)
end

And /^I press the My tariff widget$/ do
  @page.press_my_tariff_widget
end
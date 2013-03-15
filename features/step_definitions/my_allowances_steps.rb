When /^I should see the My allowances page$/ do
  #@page = page(MyAllowancesPage)
  @page = MyAllowancesPage.new
end

And /^I should see My airtime tariff widget$/ do
  @page.assert_my_airtime_tariff_widget_title
end

And /^I press My airtime tariff widget$/ do
  @page.press_my_airtime_tariff_widget
end
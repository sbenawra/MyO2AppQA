Then /^I should see the My tariff page with the title "([^"]*)"$/ do |tariff_type|
  @page = MyTariffPage.new(tariff_type)
end
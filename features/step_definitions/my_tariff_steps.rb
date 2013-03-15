Then /^I should see the My tariff page with the title "([^"]*)"$/ do |tariff_type|
  #@page = page(@my_tariff_page)
  @page = MyTariffPage.new(tariff_type)
end
Then /^I should see the Menu Bar$/ do
  @page = page(MenuBarPage)
end

When /^I press the Settings Menu button to view settings$/ do
  @page.select_settings_menu
end
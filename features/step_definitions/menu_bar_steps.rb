Then /^I should see the Menu Bar$/ do
  @page = page(MenuBarPage)
end

When /^I press the Settings Menu button$/ do
  @page = @page.select_settings_menu
end
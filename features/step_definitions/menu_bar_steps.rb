Then /^I should see the Menu Bar$/ do
  @page = MenuBarPage.new
end

When /^I press the Settings Menu button$/ do
  @page = page(MenuBarPage)
  @page = @page.select_settings_menu
end

And /^I press the Navigation Menu button$/ do
  @page = page(MenuBarPage)
  @page = @page.select_navigation_menu
end


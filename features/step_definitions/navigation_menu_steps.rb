And /^I select "([^"]*)" from the navigation menu$/ do |selected_menu_button|
  @page.press_menu_button(selected_menu_button)
end
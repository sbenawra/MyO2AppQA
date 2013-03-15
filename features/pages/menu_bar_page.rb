require File.dirname(__FILE__) + '/page.rb'

class MenuBarPage < Page
  def initialize
    wait_for_elements_exist(["New_MenuBarView"])
  end

  def select_settings_menu
    press_button_with_class('RelativeLayout', 'id', 'RelativeLayoutOfSettingsMenuIcon')
    page(SettingsMenuPage)
  end

  def self.is_select_settings_displayed
    query("RelativeLayout id:'RelativeLayoutOfSettingsMenuIcon'").size == 1
  end

  def select_navigation_menu
    press_button_with_class('FrameLayout', 'id', 'menu_arrow_layout')
    page(NavigationMenuPage)
  end

end
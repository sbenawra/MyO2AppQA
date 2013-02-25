require File.dirname(__FILE__) + '/page.rb'

class MenuBarPage < Page
  def initialize
    wait_for_elements_exist(["New_MenuBarView"])
  end

  def select_settings_menu
    press_button_with_class('RelativeLayout','id', 'RelativeLayoutOfSettingsMenuIcon')
    page(SettingsMenuPage)
  end

end
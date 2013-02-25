require File.dirname(__FILE__) + '/page.rb'

class SettingsMenuPage < Page
  def initialize
    wait_for_elements_exist(["listView id:'listViewSettingsMenu'"])
  end

  def select_sign_out
    press_button_with_class('New_TextViewEx','text','Sign out')
  end

end
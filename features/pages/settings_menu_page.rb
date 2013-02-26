require File.dirname(__FILE__) + '/page.rb'
require 'test/unit/assertions'
include Test::Unit::Assertions

class SettingsMenuPage < Page
  def initialize
    wait_for_elements_exist(["listView id:'listViewSettingsMenu'"])
  end

  def select_sign_out
    press_button_with_class('New_TextViewEx','text','Sign out')
    wait_for_elements_exist(["New_TextViewEx id:'dialogbox_message'"])
    self
  end

  def assert_sign_out_message_displayed(expctd_msg)
    actual_msg = query("New_TextViewEx id:'dialogbox_message'", :getText)[0].to_s
    assert_equal(expctd_msg, actual_msg)
    self
  end

  def press_ok_to_sign_out
    press_button_with_class('New_ButtonEx','text','OK')
    page(SignInPage)
  end

  def press_cancel_to_not_sign_out
    press_button_with_class('New_ButtonEx','text','Cancel')
    page(HomePage)
  end

end
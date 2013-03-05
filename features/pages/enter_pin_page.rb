require File.dirname(__FILE__) + '/page.rb'
class EnterPinPage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx marked:'Use your PIN to access your account'"], :timeout => 20)
  end

  def enter_pin(pin)
    query("EditText id:'editText'", :setText => pin)
    page(HomePage)
  end

  def self.is_enter_pin_page?
    query("New_TextViewEx marked:'Use your PIN to access your account'").size == 1
  end

  def press_change_pin
    press_button_with_class('New_ButtonEx','text','Change PIN')
    wait_for_elements_exist(["New_TextViewEx text:'Change PIN'"])
    self
  end

  def press_ok_to_change_pin
    press_button_with_class('New_ButtonEx','text','OK')
    page(SignInPage)
  end

end
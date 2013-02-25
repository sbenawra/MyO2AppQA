require File.dirname(__FILE__) + '/page.rb'
class EnterPinPage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx marked:'Use your PIN to access your account'"], :timeout => 20)
  end

  def enter_pin(pin)
    query("EditText id:'editText'", :setText => pin)
    page(HomePage)
  end



end
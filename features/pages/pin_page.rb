require File.dirname(__FILE__) + '/page.rb'
class PinPage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx marked:'Set a four digit PIN to keep your details safe'"], :timeout => 20)
  end

  def enter_pin(pin)
    query("EditText id:'editText'", :setText => pin)
    page(HomePage)
  end



end
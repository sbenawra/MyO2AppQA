class PinPage < Page

  def initialize
    puts "Initialising HomePage"
    wait_for_elements_exist(["New_TextViewEx marked:'Set a four digit PIN to keep your details safe'"])
  end

  def enter_pin(pin)
    query("EditText id:'editText'", :setText => pin)
    page(HomePage)
  end



end
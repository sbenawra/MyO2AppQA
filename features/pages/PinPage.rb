class PinPage < GenericPageMethods

  def enter_pin(pin)
    query("EditText id:'editText'", :setText => pin)
  end

end
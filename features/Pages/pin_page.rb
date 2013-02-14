require 'C:\MyO2Calabash\features\Pages\generic_page_methods'

class PinPage < GenericPageMethods
  def EnterPIN(pin)
    TouchInputField("New_ImageViewEx" , "id", "PIN1")
    pin = pin.split('').map(&:to_i)
    for digit in pin
      a = 1
      inputBox = "PIN" + a.to_s
      EnterTextToField("New_ImageViewEx", "id", inputBox , digit)
      a = a + 1
    end
  end
end
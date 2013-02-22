class HomePage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx marked:'Home'"])
  end

end
class SignInPage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx marked:'Sign in to review your account.'"])
  end

  def enter_credentials(username, password)
    query("New_EditTextEx id:'EditUsername'", :setText => username)
    query("New_EditTextEx id:'EditPassword'", :setText => password)
  end

  def sign_in_successfully
    press_button('Sign in')
    PinPage.new
  end

end
require File.dirname(__FILE__) + '/page.rb'
class SignInPage < Page

  def initialize
      wait_for_elements_exist(["New_TextViewEx marked:'Sign in to review your account.'"])
  end

  def enter_credentials(username, password)
    query("New_EditTextEx id:'EditUsername'", :setText => username)
    query("New_EditTextEx id:'EditPassword'", :setText => password)
    self
  end

  def sign_in_successfully
    press_button('Sign in')
    page(SetPinPage)
  end

  def self.is_sign_in_page?
    query("New_EditTextEx id:'EditUsername'").size == 1
  end

end
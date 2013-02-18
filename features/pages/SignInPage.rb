class SignInPage < GenericPageMethods

  def enter_credentials(username, password)
    query("New_EditTextEx id:'EditUsername'", :setText => username)
    query("New_EditTextEx id:'EditPassword'", :setText => password)
  end

end
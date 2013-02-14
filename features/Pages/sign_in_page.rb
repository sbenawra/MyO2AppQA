require 'C:\MyO2Calabash\features\Pages\generic_page_methods'
class SignInPage < GenericPageMethods

  def EnterCredentials(username, password)
    query("New_EditTextEx id:'EditUsername'", :setText => username)
    query("New_EditTextEx id:'EditPassword'", :setText => password)
  end

end
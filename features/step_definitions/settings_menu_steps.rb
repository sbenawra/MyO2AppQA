SIGN_OUT_MSG = "Signing out means that you'll need to enter your username and password next time you sign in, as well as set up a new PIN. Are you sure you want to sign out?"

And /^I select Sign Out$/ do
  @page.select_sign_out.assert_sign_out_message_displayed(SIGN_OUT_MSG)
end

And /^I press OK to Sign Out$/ do
  @page.press_ok_to_sign_out
end

And /^I press Cancel$/ do
  @page.press_cancel_to_not_sign_out
end
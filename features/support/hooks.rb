Before do |scenario|
  unless SignInPage.is_sign_in_page?
    if MenuBarPage.is_select_settings_displayed
      MenuBarPage.new.select_settings_menu.select_sign_out.press_ok_to_sign_out
    elsif EnterPinPage.is_enter_pin_page?
      EnterPinPage.new.press_change_pin.press_ok_to_change_pin
    end
  end
end

require File.dirname(__FILE__) + '/page.rb'

class MyAllowancesPage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx id:'screen_title' text:'My allowances'"])
  end

  def assert_my_tariff_widget_title(expected_text)
    assert_text_is_displayed(expected_text, query("New_TextViewEx id:'line1'", :getText)[3])
  end

  def press_my_tariff_widget
    press_button_with_text_like('New_TextViewEx', 'My*tariff*')
  end

  def press_minutes_widget
    press_button_with_class('New_TextViewEx', 'text','Minutes')
    wait_for_elements_exist(["New_TextViewEx id:'line_youhaveleft'"])
  end

  def assert_minutes_allowance_displayed(expected_text)
    assert_element_exists("New_TextViewEx text:\'#{expected_text}\'")
  end

end
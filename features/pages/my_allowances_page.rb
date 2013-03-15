require File.dirname(__FILE__) + '/page.rb'

class MyAllowancesPage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx id:'screen_title' text:'My allowances'"])
  end

  def assert_my_airtime_tariff_widget_title
    assert(query("New_TextViewEx text:'My airtime tariff'").length == 1)
  end

  def press_my_airtime_tariff_widget
    press_button_with_class('New_TextViewEx', 'text', 'My airtime tariff')
  end

end
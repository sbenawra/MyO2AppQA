require File.dirname(__FILE__) + '/page.rb'

class HomePage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx marked:'Home'"])
  end

  def assert_latest_bill_widget_title(expected_text)
    actual_text = query("new_TextViewEx marked:'latest bill line 1'", :getText)[0] + ' ' + query("new_TextViewEx id:'line1_more_bold'", :getText)[0] + query("new_TextViewEx id:'line1_more_regular'", :getText)[0]
    assert_text_is_displayed(expected_text, actual_text)
  end

  def assert_latest_bill_cost(expected_cost)
    assert_text_is_displayed(expected_cost,query("new_TextViewEx marked:'latest bill line 3 value'", :getText)[0])
  end

  def assert_latest_bill_widget_footer(expected_text)
    assert_text_is_displayed(expected_text,query("New_TextViewEx id:'footer'",:getText)[0])
  end

  def press_latest_bill_widget
    press_button_with_text_like('New_TextViewEx', 'Your latest*')
    page(MyBillPage)
  end
end
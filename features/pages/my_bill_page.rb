require File.dirname(__FILE__) + '/page.rb'

class MyBillPage < Page

  CCA_BILL_INFO_MESSAGE = '*This is your airtime bill only. Sign in to o2.co.uk/myO2 to view your phone plan (CCA)'

  def initialize
    wait_for_elements_exist(["New_TextViewEx id:'screen_title' text:'My bill'"])
  end

  def assert_latest_bill_widget_title (expected_text)
    assert_element_exists('New_TextViewEx', 'text', expected_text)
  end

  def assert_latest_bill_cost (expected_cost)
    assert_element_exists('New_TextViewEx', 'text', expected_cost)
  end

  def assert_you_were_billed_on_text
    assert(query("New_TextViewEx id:'line3_1' text:'You were billed on'").length == 1)
  end

  def assert_you_were_billed_on_date (expected_date)
    assert(query("New_TextViewEx id:'line3_2' text:'#{expected_date}'").length == 1)
  end

  def assert_payment_due_on_text
    assert(query("New_TextViewEx id:'line4_1' text:'Payment due on'").length == 1)
  end

  def assert_payment_due_on_date (expected_date)
    assert(query("New_TextViewEx id:'line4_2' text:'#{expected_date}'").length == 1)
  end

  def assert_balance_due_on_text
    assert(query("New_TextViewEx id:'line5_1' text:'Balance due:'").length == 1)
  end

  def assert_balance_due_cost(expected_balance)
    assert(query("New_TextViewEx id:'line5_2' text:'#{expected_balance}'").length == 1)
  end

  def assert_latest_bill_widget_footer(expected_message)
    if expected_message == CCA_BILL_INFO_MESSAGE
      #Put the new line in the message in order for the Calabash Query
      expected_message = "*This is your airtime bill only. Sign in to \no2.co.uk/myO2 to view your phone plan (CCA)"
    end
    assert_element_exists('New_TextViewEx', 'text', expected_message)
  end

  def assert_make_a_payment_widget_title
    assert_element_exists('New_TextViewEx', 'text', 'Make a payment')
  end

  def assert_make_a_payment_message(expected_message)
    assert_element_exists('New_TextViewEx', 'text', expected_message)
  end

  def press_make_a_payment_widget
    press_button_with_class('New_TextViewEx', 'text', 'Make a payment')
  end

  def assert_make_a_payment_dialog_visible
    assert_element_exists('New_TextViewEx', 'id', 'dialogbox_title')
  end

  def press_ok_button
    press_button('OK')
  end

end
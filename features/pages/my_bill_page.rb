require File.dirname(__FILE__) + '/page.rb'

class MyBillPage < Page

  CCA_BILL_INFO_MESSAGE = '*This is your airtime bill only. Sign in to o2.co.uk/myO2 to view your phone plan payment.'

  def initialize
    wait_for_elements_exist(["New_TextViewEx id:'screen_title' text:'My bill'"])
  end

  def assert_latest_bill_widget_title (expected_text)
    #TODO Use the contentDescription once in place to get more control on identification
    assert_text_is_displayed(expected_text, query("New_TextViewEx id:'line1'",:getText)[0])
  end

  def assert_latest_bill_cost (expected_cost)
    #TODO Use the contentDescription once in place to get more control on identification
    assert_text_is_displayed(expected_cost, query("New_TextViewEx id:'line2'", :getText)[0])
  end

  def assert_you_were_billed_on_text
    assert(query("New_TextViewEx id:'line3_1' text:'You were billed on'").length == 1)
  end

  def assert_you_were_billed_on_date (expected_date)
    assert_text_is_displayed(expected_date, query("New_TextViewEx id:'line3_2'", :getText)[0])
  end

  def assert_payment_due_on_text
    assert(query("New_TextViewEx id:'line4_1' text:'Payment due on'").length == 1)
  end

  def assert_payment_due_on_date (expected_date)
    assert_text_is_displayed(expected_date, query("New_TextViewEx id:'line4_2'", :getText)[0])
  end

  def assert_balance_due_on_text
    assert(query("New_TextViewEx id:'line5_1' text:'Balance'").length == 1)
  end

  def assert_balance_due_cost(expected_balance)
    assert_text_is_displayed(expected_balance, query("New_TextViewEx id:'line5_2'", :getText)[0])
  end

  def assert_latest_bill_widget_footer(expected_message)
    if expected_message == CCA_BILL_INFO_MESSAGE
      #Put the new line in the message in order for the Calabash Query
      expected_message = "*This is your airtime bill only. Sign in to \no2.co.uk/myo2 to view your phone plan payment."
    end
    assert_equal(expected_message,query("New_TextViewEx id:'footer'",:getText)[0])
  end

  def assert_make_a_payment_widget_title
    assert_element_exists("New_TextViewEx text:'Make a payment'")
  end

  def assert_make_a_payment_message(expected_message)
    assert_text_is_displayed(expected_message, query("New_TextViewEx id:'line2'",:getText)[1])
  end

  def press_make_a_payment_widget
    press_button_with_class('New_TextViewEx', 'text', 'Make a payment')
  end

  def assert_make_a_payment_dialog_title
    assert_element_exists("New_TextViewEx id:'dialogbox_title' text:'Make a payment'")
  end

  def assert_make_a_payment_dialog_message(expectedMessage)
    assert_text_is_displayed(expectedMessage, query("New_TextViewEx id:'dialogbox_message'",:getText)[0])
  end

  def press_ok_button
    press_button('OK')
  end

end
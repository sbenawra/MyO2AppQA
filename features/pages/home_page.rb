require File.dirname(__FILE__) + '/page.rb'
require 'test/unit/assertions'
include Test::Unit::Assertions

class HomePage < Page

  def initialize
    wait_for_elements_exist(["New_TextViewEx marked:'Home'"])
  end


  def assert_latest_bill_widget_title(expected_text)
    assert_element_exists('New_TextViewEx', 'text', expected_text)
  end

  def assert_latest_bill_cost(expected_cost)
    assert_element_exists('New_TextViewEx', 'text', expected_cost)
  end

  def assert_latest_bill_widget_footer(expected_text)
    assert_element_exists('New_TextViewEx', 'text', expected_text)
  end
end
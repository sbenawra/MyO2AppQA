require File.dirname(__FILE__) + '/page.rb'

class MyTariffPage < Page
  # To change this template use File | Settings | File Templates.
  def initialize(type)
    wait_for_elements_exist(["New_TextViewEx id:'screen_title' text:'#{type}'"])
  end
end
require File.dirname(__FILE__) + '/page.rb'


class NavigationMenuPage < Page
  def initialize
    wait_for_elements_exist(["ListView id:'main_menu_listview'"])
  end

  def press_menu_button(selected_menu_button)
    case selected_menu_button
      when 'My Allowances'
        press_button_with_class('New_TextViewEx','text','My allowances')
        #page(MyAllowancesPage)
      when 'Home'
        press_button_with_class('New_TextViewEx','text','Home')
        #page(HomePage)
      when 'My Bill'
        press_button_with_class('New_TextViewEx','text','My bill')
        #page(MyBillPage)
      when 'My Bolt Ons'
        press_button_with_class('New_TextViewEx','text','My Bolt Ons')
        #page(MyBoltOnsPage)
      else
        puts 'oops something went wrong'
    end

  end
end
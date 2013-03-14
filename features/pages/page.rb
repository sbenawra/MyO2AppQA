require 'test/unit/assertions'
include Test::Unit::Assertions

class Page < Calabash::Base

  #Abstraction of <page>_page. This class has represents objects and actions that can be called which are NOT page
  #specific

  def press_button(searchString) #find button by text
    touch("New_ButtonEx marked:\'#{searchString.to_s}\'")
  end

  def press_button_with_identifier(identifier, searchString) #add identifier (i.e. id, marked, text)
    touch("New_ButtonEx #{identifier.to_s}:\'#{searchString.to_s}\'")
  end

  def press_button_with_class(type, identifier, searchString) #add class name if different
    touch("#{type.to_s} #{identifier.to_s}:\'#{searchString.to_s}\'")
  end

  def enter_text(type, identifier, searchString, input)
    puts "#{type.to_s} #{identifier.to_s}:\'#{searchString.to_s}\'"
    query("#{type.to_s} #{identifier.to_s}:\'#{searchString.to_s}\'", :setText => input)
  end

  def touch_input_field(type, identifier, searchString)
    touch("#{type.to_s} #{identifier.to_s}:\'#{searchString.to_s}\'")
  end

  def assert_element_exists(type, identifier, searchString)
    assert(query("#{type.to_s} #{identifier.to_s}:\'"+"#{searchString}"+"\'").length == 1)
  end

  def press_button_with_text_like(type, search_string)
    touch("#{type.to_s} {text LIKE '#{search_string.to_s}'}")
  end
end
class Page

  alias_method :wait_for_elements_exist_new, :wait_for_elements_exist

  def wait_for_elements_exist(elements_array, options={})
    sleep(0.3)
    wait_for_elements_exist_new(elements_array, options={})
  end

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
end
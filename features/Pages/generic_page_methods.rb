class GenericPageMethods

  def PressButton(searchString) #find button by text
    touch("New_ButtonEx marked:\'#{searchString.to_s}\'")
  end

  def PressButtonWithIdentifier(identifier, searchString) #add identifier (i.e. id, marked, text)
    touch("New_ButtonEx #{identifier.to_s}:\'#{searchString.to_s}\'")
  end

  def PressButtonWithClass(type, identifier, searchString) #add class name if different

    touch("#{type.to_s} #{identifier.to_s}:\'#{searchString.to_s}\'")
  end

  def EnterTextToField(type, identifier, searchString, input)
    puts "#{type.to_s} #{identifier.to_s}:\'#{searchString.to_s}\'"
    query("#{type.to_s} #{identifier.to_s}:\'#{searchString.to_s}\'", :setText => input)
  end

  def TouchInputField(type, identifier, searchString)
    touch("#{type.to_s} #{identifier.to_s}:\'#{searchString.to_s}\'")
  end
end
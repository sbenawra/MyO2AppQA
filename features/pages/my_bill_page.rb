class MyBillPage
  def initialize
    wait_for_elements_exist(["New_TextViewEx id:'screen_title' text:'My bill'"])
  end
end
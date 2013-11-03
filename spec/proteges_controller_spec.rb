require 'spec_helper'
 
describe ProtegesController do
	
	describe "index" do
    
    it "has an index" do
      proteges_controller.should respond_to(index)
    	proteges_controller.index.should == proteges_controller.index
    end
  
  end

end
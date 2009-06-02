require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Thing do
  it "should save to ferret and recover" do
    thing = Thing.new(:id => 1, :field1 => "test", :field2 => "another test")
    thing.save
    from_ferret = Thing.find_with_ferret("another")
    from_ferret[:field1].should == "test"
  end
end

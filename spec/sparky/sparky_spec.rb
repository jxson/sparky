require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Sparky do
  it "should respond to #lorem" do
    Sparky.should respond_to( :lorem )
  end

  it "should respond to #name" do
    Sparky.should respond_to( :name )
  end
end

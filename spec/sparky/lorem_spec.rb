require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Sparky::Lorem do
  it "should respond to #create" do
    Sparky::Lorem.should respond_to( :create )
  end

  it "should have a total_words count for the classic Lorem ipsum passage" do
    Sparky::Lorem.total_words.should == 249
  end

  it "should default to one sentence of Lorem" do
    # Since this crap is random this is the best way
    sentence = Sparky::Lorem.create
    sentence.should_not be_nil
    sentence.should be_a_kind_of( String )
    ['.', '!', '?', '...'].should include( sentence[sentence.length - 1, 1] )
  end
end
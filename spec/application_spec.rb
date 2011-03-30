require File.dirname(__FILE__) + '/spec_helper'

describe "Application" do

  it "should respond to /" do
    get "/"
    last_response.status.should == 200
  end

end
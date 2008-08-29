require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Rights do
  before(:each) do
    @valid_attributes = {
      :statement => "a statement",
      :license => "license verbage",
    }
  end

  it "should create a new instance given valid attributes" do
    Rights.create!(@valid_attributes)
  end
end

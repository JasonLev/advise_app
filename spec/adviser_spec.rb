require 'spec_helper'
 
describe Adviser do
	let(:adviser) { Adviser.create(user_id: 5) }

  it 'should have an adviser id' do
    adviser.should respond_to(:id)
    adviser.id.should == adviser.id
  end

  it 'should have a user id' do
    adviser.should respond_to(:user_id)
    adviser.user_id.should == adviser.user_id
  end

  it 'should have an adviser meeting count' do
    adviser.should respond_to(:adviser_meeting_count)
    adviser.adviser_meeting_count.should == adviser.adviser_meeting_count
  end

  it 'should have a record of when the 
  adviser became an adviser' do
    adviser.should respond_to(:adviser_since)
    adviser.adviser_since.should == adviser.adviser_since
  end

  it 'should have a participation level' do
    adviser.should respond_to(:participation_level)
    adviser.participation_level.should == adviser.participation_level
  end

  it "counts only records that match a query" do
    Adviser.create!(:participation_level => "Quarterly")
    expect(Adviser.where(:participation_level => "Quarterly")).to have(1).record
    expect(Adviser.where(:participation_level => "Daily")).to have(0).records
  end

  # it "should have a user id equal to the user's id" do
  	
  # 	adviser.user_id.should == adviser.user.id
  # end
end